class LoginRequest{
  final String email;
  final String password;
  final double last_signin_lat;
  final double last_signin_long;
  final String signin_device_model;
  final String signin_device_os;
  final String signin_device_type;
  final String device_token;
  final String body;

  LoginRequest({this.email, this.password, this.last_signin_lat,
      this.last_signin_long, this.signin_device_model, this.signin_device_os,
      this.signin_device_type, this.device_token, this.body});

  factory LoginRequest.fromJson(Map<String, dynamic> json){
    return LoginRequest(
      email: json['email'],
      password: json['password'],
      last_signin_lat: json['last_signin_lat'],
      last_signin_long: json['last_signin_long'],
      signin_device_model: json['signin_device_model'],
      signin_device_os: json['signin_device_os'],
      signin_device_type: json['signin_device_type'],
      device_token: json['device_token'],
      body: json['body'],
    );
  }
  Map toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    map["last_signin_lat"] = last_signin_lat;
    map["last_signin_long"] = last_signin_long;
    map["signin_device_model"] = signin_device_model;
    map["signin_device_os"] = signin_device_os;
    map["signin_device_type"] = signin_device_type;
    map["device_token"] = device_token;
    map["body"] = body;

    return map;
  }
}