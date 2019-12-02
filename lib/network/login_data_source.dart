import 'dart:convert';
import 'dart:io';

import 'package:first_flutter_app/logindata/built_login_request.dart';
import 'package:first_flutter_app/logindata/built_login_response.dart';
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

  Future<BuiltLoginResponse> login(String email, String password)
  async{
      final urlEncoded = Uri.encodeFull(baseUrlLogin);
      String jsonB = json.encode(getRequest(email, password));
      final response = await client.post(urlEncoded, headers: headers, body: getRequest(email, password));

      if(response.statusCode == 200){
        return BuiltLoginResponse.fromJson(response.body);
      }else{
        throw ErrorHandler(json.decode(response.body)['error']['message']);
      }
  }

   String getRequest(String email, String password){
    String json = '{"device_token":"fsagsgsgsdgs","email":"testmanka@mail.net.mk","last_signin_lat":0.0,"last_signin_long":0.0,"password":"12345678","signin_device_model":"Nexus X","signin_device_os":"OS 8","signin_device_type":"android"}';
    return json;
    //     BuiltLoginRequest request =  BuiltLoginRequest();
//     request.email = email;
//     request.password = password;
//     request.device_token = "";
//     request.signin_device_type = "android";
//     request.last_signin_long = 0.0;
//     request.last_signin_lat = 0.0;
//     request.signin_device_os = "Nexus5X";
//     request.signin_device_model = "Nexus5X";
//     return request;
  }
}