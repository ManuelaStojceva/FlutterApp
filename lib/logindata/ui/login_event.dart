library login_event;

import 'package:built_value/built_value.dart';

part 'login_event.g.dart';


abstract class LoginEvent {}

abstract class LoginInitiated extends LoginEvent implements Built<LoginInitiated, LoginInitiatedBuilder> {

  @nullable
  String get email;
  @nullable
  String get password;
  LoginInitiated._();

  factory LoginInitiated([updates(LoginInitiatedBuilder b)]) = _$LoginInitiated;

}

