import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_scrabble_test/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:tiktok_scrabble_test/models/response_data.dart';
import 'package:tiktok_scrabble_test/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_fullscreen_widget.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({required Key key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openPostImage(String url) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return ImageFullscreenWidget(
          imageSrc: url,
          key: Key("key"),
        );
      }));
    }

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: InkWell(
            onDoubleTap: () async {
              var url =
                  'https://www.tiktok.com/@${context.read<UserDataBloc>().state.user.loginName}/';

              if (await canLaunch(url)) {
                await launch(
                  url,
                  universalLinksOnly: true,
                );
              } else {
                Utils.snackBarNotification(
                    context, "Ошибка. Проверьте данные или попробуйте позже");
              }
            },
            onTap: () {
              openPostImage(post.cover);
            },
            child: Container(
              alignment: Alignment.center,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(post.cover),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
