import 'package:flutter/material.dart';
import 'package:tiktok_scrabble_test/models/response_data.dart';

import '../constants.dart';
import 'image_fullscreen_widget.dart';

class UserInfoWidget extends StatelessWidget {
  final User user;

  const UserInfoWidget({
    required Key key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openAvatarImage(String url) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return ImageFullscreenWidget(
          imageSrc: url,
          key: Key("key"),
        );
      }));
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      color: secondaryBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    openAvatarImage(user.avatar);
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.height / 12,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(user.avatar),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  "@" + user.loginName,
                  style: mediumText,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      user.likes.toString(),
                      style: bigText,
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "likes",
                      style: mediumText,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      user.followers.toString(),
                      style: bigText,
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "followers",
                      style: mediumText,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      user.following.toString(),
                      style: bigText,
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "following",
                      style: mediumText,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
