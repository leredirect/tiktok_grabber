import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:tiktok_scrabble_test/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:tiktok_scrabble_test/bloc/user_data_bloc/user_data_event.dart';
import 'package:tiktok_scrabble_test/models/response_data.dart';

import '../constants.dart';

class ApiUtils {
  static Future<ResponseData> fetchApi(
      BuildContext context, String name, int postNumbers) async {
    int hiveId = 0;

    var body = json.encode({
      'username': name,
      'post_numbers': postNumbers,
    });

    var response = await http.post(
      Uri.parse('http://linuxtech.io:5001/api/search'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      ///API returns null's;
      //ResponseData responseData = ResponseData.fromJson(response.body);
      ResponseData responseData = ResponseData.fromJson(jsonMock);

      context.read<UserDataBloc>().add(UpdateUserDataEvent(responseData));

      var lastId = await Hive.openBox('lastId');
      if (lastId.isEmpty) {
        lastId.put('id', 0);
      } else {
        hiveId = lastId.get('id');
        lastId.put('id', hiveId + 1);
      }

      var responsesBox = await Hive.openBox('response');
      responsesBox.put(hiveId, responseData.toString());
      return responseData;
    } else {
      return ResponseData.empty();
    }
  }
}
