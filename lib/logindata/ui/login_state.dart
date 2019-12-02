library login_state;

import 'package:built_value/built_value.dart';
import 'package:first_flutter_app/logindata/built_login_response.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {

  bool get isLoading;
  BuiltLoginResponse get response;
  String get error;

  bool get isInitial =>
    !isLoading && response == BuiltLoginResponse() && error.isEmpty;

  bool get isSuccess =>
      !isLoading && response != BuiltLoginResponse() && error.isEmpty;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initial(){
    return LoginState((b) => b..isLoading = false
    ..error = ""
      ..response.replace(BuiltLoginResponse()));
  }
  factory LoginState.loading(){
    return LoginState((b) => b..isLoading = true
      ..error = ""
      ..response.replace(BuiltLoginResponse()));
  }
  factory LoginState.failure(String error){
    return LoginState((b) => b..isLoading = false
      ..error = error
      ..response.replace(BuiltLoginResponse()));
  }

  factory LoginState.success(BuiltLoginResponse thisResponse){
    return LoginState((b) => b..isLoading = false
      ..error = ""
    ..response.replace(thisResponse));
  }
}
