import 'package:bloc/bloc.dart';
import 'package:first_flutter_app/logindata/repository/login_repository.dart';
import 'package:first_flutter_app/error_handler.dart';
import 'login_event.dart';
import 'login_state.dart';


class LoginBlock extends Bloc<LoginEvent, LoginState>{

  final LoginRepository _loginRepository;

  LoginBlock(this._loginRepository): super();

  void onLoginInitiated(String email, String password){
    if(email != null)
      dispatch(LoginInitiated((e) => e..email = email));
    if(password != null)
      dispatch(LoginInitiated((p) => p..password = password));
  }

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(LoginState currentState, LoginEvent event) async*{
      if(event is LoginInitiated){
        yield LoginState.initial();
        yield LoginState.loading();
        try{
          final loginResult = await _loginRepository.login(event.email, event.password);
          yield LoginState.success(loginResult);
        } on ErrorHandler catch(e){
          yield LoginState.failure(e.message);
        }
      }else{}
  }
}