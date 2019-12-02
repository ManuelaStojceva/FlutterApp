import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import 'block.dart';
import 'logindata/ui/login_block.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final emailTextController = new TextEditingController();
  final passwordTextController = new TextEditingController();
  //final text = "";

  final _loginBloc = kiwi.Container().resolve<LoginBlock>();

  void onLogin(){

    _loginBloc.onLoginInitiated(emailTextController.text, passwordTextController.text);
//    BlocProvider.of<LoginBlock>(context).onLoginInitiated(emailTextController.text, passwordTextController.text);
//    Navigator.of(context).push(MaterialPageRoute(
//        builder: (context) => Test()
//    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _loginBloc,
      child: _buildScaffold(),
    );
  }
  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
    _loginBloc.dispose();
  }

  Scaffold _buildScaffold() {
    final block = Block();

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StreamBuilder<String>(
                stream: block.email,
                builder:(context, snapshot) => TextField(
                  onChanged: (s) => block.onEmailChanged.add(s),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailTextController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter email",
                      labelText: "Email",
                      errorText: snapshot.error
                  )
                  ,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              StreamBuilder<String>(
                stream: block.password,
                builder:(context, snapshot)=> TextField(
                  onChanged: block.onPasswordChanged,
                  keyboardType: TextInputType.text,
                  controller: passwordTextController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter password",
                      labelText: "Password",
                      errorText: snapshot.error
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              StreamBuilder<bool>(
                stream: block.submitCheck,
                builder:(context, snapshot)=> RaisedButton(
                  color: Colors.purple,
                  onPressed: snapshot.hasData ? () => onLogin() : null,
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

