import 'package:health_app/model/user_model.dart';

class RegisterResponse {
  User? user;
  String? token;

  RegisterResponse({this.user, this.token});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ?   User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}