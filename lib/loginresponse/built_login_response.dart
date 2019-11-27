library built_login_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'built_login_response.g.dart';

abstract class BuiltLoginResponse implements Built<BuiltLoginResponse, BuiltLoginResponseBuilder>{
  String get auth_token;
  IntegerDivisionByZeroException get error_code;
  String get message;
  bool get status;
  BuiltList<String> get bad_attributes;

  BuiltLoginResponse._();

  factory BuiltLoginResponse([updates(BuiltLoginResponseBuilder b)]) = _$BuiltLoginResponse;
  
  String toJson(){
    //return json.encode(serializera.serializeWith())
  }
}