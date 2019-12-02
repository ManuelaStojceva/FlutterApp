library built_login_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'built_login_response.g.dart';

abstract class BuiltLoginResponse implements Built<BuiltLoginResponse, BuiltLoginResponseBuilder> {
  @nullable
  String get auth_token;
  @nullable
  int get error_code;
  @nullable
  String get message;
  @nullable
  bool get status;
  @nullable
  BuiltList<String> get bad_attributes;
  BuiltLoginResponse._();

  factory BuiltLoginResponse([updates(BuiltLoginResponseBuilder b)]) = _$BuiltLoginResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltLoginResponse.serializer, this));
  }

  static BuiltLoginResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltLoginResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltLoginResponse> get serializer => _$builtLoginResponseSerializer;

}



