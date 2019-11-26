import 'dart:async';

import 'package:first_flutter_app/validator.dart';
import 'package:rxdart/rxdart.dart';

class Block extends Object with Validators implements BaseBloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream.transform(emailValidator);

  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);
  Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (email,password) => true);

  StreamSink<String>  get onEmailChanged => _emailController.sink;
  Function(String) get onPasswordChanged => _passwordController.sink.add;


  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
