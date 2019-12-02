library built_login_request;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'built_login_request.g.dart';

abstract class BuiltLoginRequest implements Built<BuiltLoginRequest, BuiltLoginRequestBuilder> {

  String get email;
  String get password;
  double get last_signin_lat;
  double get last_signin_long;
  String get signin_device_model;
  String get signin_device_os;
  String get signin_device_type;
  String get device_token;

  BuiltLoginRequest._();

  factory BuiltLoginRequest([updates(BuiltLoginRequestBuilder b)]) = _$BuiltLoginRequest;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltLoginRequest.serializer, this));
  }

  static BuiltLoginRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltLoginRequest.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltLoginRequest> get serializer => _$builtLoginRequestSerializer;

}
