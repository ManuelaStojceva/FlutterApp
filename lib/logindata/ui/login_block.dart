import 'package:bloc/bloc.dart';
import 'package:first_flutter_app/logindata/login_request_data.dart';
import 'package:first_flutter_app/logindata/repository/login_repository.dart';
import 'package:first_flutter_app/error_handler.dart';
import 'login_event.dart';
import 'login_state.dart';


class LoginBlock extends Bloc<LoginEvent, LoginState>{

  final LoginRepository _loginRepository;

  LoginBlock(this._loginRepository): super();

  void onLoginInitiated(String email, String password){
    LoginRequest newRequest =  new LoginRequest(email: email, password: password, last_signin_lat: 0.0, last_signin_long: 0.0, signin_device_model: "Nexus5", signin_device_os: "8.0", signin_device_type: "android", device_token: "");

    if(newRequest != null)
      dispatch(LoginInitiated((b) => b..loginRequest = newRequest));

  }


  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(LoginState currentState, LoginEvent event) async*{
      if(event is LoginInitiated){
        yield LoginState.initial();
        yield LoginState.loading();
        try{
          final loginResult = await _loginRepository.login(event.loginRequest);
          yield LoginState.success(loginResult);
        } on ErrorHandler catch(e){
          yield LoginState.failure(e.message);
        }
      }else{}
  }
}