library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'logindata/built_login_response.dart';


part 'serializers.g.dart';

@SerializersFor(const [
  BuiltLoginResponse
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();