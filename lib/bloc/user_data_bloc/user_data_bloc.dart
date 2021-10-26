import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_scrabble_test/models/response_data.dart';

import 'user_data_event.dart';

class UserDataBloc extends Bloc<UserDataEvent, ResponseData> {
  UserDataBloc() : super(ResponseData.empty());

  @override
  Stream<ResponseData> mapEventToState(UserDataEvent event) async* {
    if (event is UpdateUserDataEvent) {
      yield state.copyWith(event.responseData);
    }
  }
}
