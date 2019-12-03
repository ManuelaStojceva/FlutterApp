import 'dart:convert';
import 'dart:io';

import 'package:first_flutter_app/logindata/built_login_request.dart';
import 'package:first_flutter_app/logindata/built_login_response.dart';
import 'package:first_flutter_app/logindata/login_request_data.dart';
import 'package:first_flutter_app/network/api_key.dart';
import 'package:http/http.dart' as http;

import '../error_handler.dart';

//const String endpoint = '/user/login';
class LoginDataSource {
  final http.Client client;
  //final String _baseUrl ='http://api.naracaj.com/api/v1$endpoint';
  Map<String, String> headers = {
    "Content-type": "application/json",
    "locale" : "mk"
  };
  LoginDataSource(this.client);

  Future<BuiltLoginResponse> login(LoginRequest body)
  async{
      final urlEncoded = Uri.encodeFull(baseUrlLogin);
      String jsoN = jsonEncode(body.toMap());
      final response = await client.post(urlEncoded, headers: headers, body: jsoN);

      if(response.statusCode == 200){
        return BuiltLoginResponse.fromJson(response.body);
      }else{
        throw ErrorHandler(json.decode(response.body)['error']['message']);
      }
  }
}