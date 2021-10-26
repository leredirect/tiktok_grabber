import 'package:tiktok_scrabble_test/models/response_data.dart';

class UserDataEvent {}

class UpdateUserDataEvent extends UserDataEvent {
  ResponseData responseData;

  UpdateUserDataEvent(this.responseData);
}
