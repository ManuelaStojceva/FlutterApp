import 'package:first_flutter_app/block.dart';
import 'package:first_flutter_app/test.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Color(0xFF915FB5), accentColor: Color(0xFFCA436B)),
        debugShowCheckedModeBanner: false,
        home: FormPage());
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final textController = new TextEditingController();
  final text = "";

  void onLogin(){
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Test()
    ));
  }

  @override
  Widget build(BuildContext context) {
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
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter email",
                      labelText: "Email",
                      errorText: snapshot.error)
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
