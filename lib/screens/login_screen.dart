import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_scrabble_test/screens/responses_history.dart';
import 'package:tiktok_scrabble_test/utils/api_utils.dart';
import 'package:tiktok_scrabble_test/utils/utils.dart';
import 'package:uiblock/uiblock.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _postCountController = TextEditingController();
  FocusNode nameNode = FocusNode();
  FocusNode postCountNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: const Text(
          "login",
          style: mediumText,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ResponsesHistory();
              }));
            },
            icon: const Icon(Icons.history),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Column(
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "input username:",
                    style: mediumText,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(width: 2, color: primeColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: standardText,
                    focusNode: nameNode,
                    controller: _nameController,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(postCountNode);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "input posts count:",
                    style: mediumText,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(width: 2, color: primeColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: standardText,
                    focusNode: postCountNode,
                    controller: _postCountController,
                    textInputAction: TextInputAction.go,
                    onFieldSubmitted: (value) async {
                      FocusScope.of(context).unfocus();
                      await ApiUtils.fetchApi(
                          context, _nameController.value.text, 2);
                      Navigator.pushNamed(context, "homeScreen");
                    },
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () async {
                UIBlock.block(context,
                    customLoaderChild: const CircularProgressIndicator(
                      backgroundColor: secondaryBackgroundColor,
                      valueColor: AlwaysStoppedAnimation<Color>(primeColor),
                    ));
                try {
                  await ApiUtils.fetchApi(context, _nameController.value.text,
                      int.parse(_postCountController.value.text));
                  UIBlock.unblock(context);
                  Navigator.pushNamed(context, "homeScreen");
                } on Error catch (e) {
                  UIBlock.unblock(context);
                  Utils.snackBarNotification(
                      context, "Ошибка. Проверьте данные или попробуйте позже");
                }
              },
              child: Container(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 50, right: 50),
                color: primeColor,
                child: const Text(
                  "grab it!",
                  style: mediumText,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _postCountController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _nameController.value = const TextEditingValue(text: "buzova86");
    _postCountController.value = TextEditingValue(text: "10");
  }
}
