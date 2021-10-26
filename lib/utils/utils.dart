import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Utils {
  static void snackBarNotification(context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      width: MediaQuery.of(context).size.width / 2.2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      content: Text(
        text,
        textAlign: TextAlign.left,
      ),
    ));
  }

  static Future<List<List>> getLists() async {
    var responsesBox = await Hive.openBox('response');
    List<List> result = [];
    List nums = responsesBox.toMap().keys.toList();
    List responses = responsesBox.toMap().values.toList();
    result.add(nums);
    result.add(responses);
    return result;
  }
}
