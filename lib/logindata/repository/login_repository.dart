import 'package:first_flutter_app/error_handler.dart';
import 'package:first_flutter_app/logindata/built_login_response.dart';
import 'package:first_flutter_app/network/login_data_source.dart';

import '../login_request_data.dart';

class LoginRepository{
  LoginDataSource _loginDataSource;

  LoginRepository(this._loginDataSource);

  Future<BuiltLoginResponse> login(LoginRequest body) async{

    final result = await _loginDataSource.login(body);
    if(result != null){
      if(result.auth_token != null && result.auth_token.isNotEmpty){
        return result;
      }
    }else{
      throw ErrorHandler("Something went wrong!");
    }
    return result;
  }
}