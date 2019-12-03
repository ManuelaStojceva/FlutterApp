library login_event;

import 'package:built_value/built_value.dart';

import '../login_request_data.dart';

part 'login_event.g.dart';


abstract class LoginEvent {}

abstract class LoginInitiated extends LoginEvent implements Built<LoginInitiated, LoginInitiatedBuilder> {

  @nullable
  LoginRequest get loginRequest;
  LoginInitiated._();

  factory LoginInitiated([updates(LoginInitiatedBuilder b)]) = _$LoginInitiated;

}

