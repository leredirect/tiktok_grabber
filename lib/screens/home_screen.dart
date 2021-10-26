import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_scrabble_test/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:tiktok_scrabble_test/constants.dart';
import 'package:tiktok_scrabble_test/models/response_data.dart';
import 'package:tiktok_scrabble_test/utils/api_utils.dart';
import 'package:tiktok_scrabble_test/utils/utils.dart';
import 'package:tiktok_scrabble_test/widgets/post_widget.dart';
import 'package:tiktok_scrabble_test/widgets/user_meta_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final RefreshController _refreshController = RefreshController(
  //    initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataBloc, ResponseData>(
      builder: (BuildContext context, state) {
        if (state.posts.isNotEmpty) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(state.user.name),
            ),
            backgroundColor: mainBackgroundColor,
            body: RefreshIndicator(
              onRefresh: () async {
                try {
                  await ApiUtils.fetchApi(
                      context, state.user.loginName, state.posts.length);
                  Navigator.pushNamed(context, "homeScreen");
                } on Error catch (e) {
                  Utils.snackBarNotification(
                      context, "Ошибка. Проверьте данные или попробуйте позже");
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UserInfoWidget(
                      key: Key("key"),
                      user: state.user,
                    ),
                    GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 3 / 4,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: context
                            .read<UserDataBloc>()
                            .state
                            .posts
                            .map((e) => Container(
                                padding: EdgeInsets.all(5),
                                child: PostWidget(
                                  post: e,
                                  key: const Key("key"),
                                )))
                            .toList()),
                    //SmartRefresher(controller: _refreshController, enablePullDown: false, enablePullUp: true,)
                  ],
                ),
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
