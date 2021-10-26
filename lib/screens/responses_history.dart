import 'package:flutter/material.dart';
import 'package:tiktok_scrabble_test/constants.dart';
import 'package:tiktok_scrabble_test/utils/utils.dart';

class ResponsesHistory extends StatefulWidget {
  ResponsesHistory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ResponsesHistoryState();
}

class _ResponsesHistoryState extends State<ResponsesHistory> {
  //final RefreshController _refreshController = RefreshController(
  //    initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<List>>(
        future: Utils.getLists(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null && snapshot.data!.isNotEmpty) {
              return Scaffold(
                appBar: AppBar(
                  title: Text("history"),
                ),
                body: ListView.builder(
                    itemCount: snapshot.data!.first.length,
                    itemBuilder: (context, index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.all(10),child: Text(snapshot.data!.first[index].toString() + ": " + snapshot.data!.last[index].toString())),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2,
                              color: Colors.black,
                            ),
                          ]);
                    }),
              );
            } else {
              return const Center(child: Text("empty",style: mediumText,));
            }
          } else {
            return Container();
          }
        });
  }
}
