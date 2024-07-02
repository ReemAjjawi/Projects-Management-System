// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

import 'package:project_managment_state_managment_bloc/model/handling/handle_model.dart';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel extends ResultModel{
    String firstName;
    String lastName;
    String email;
    String password;
    String role;

    RegisterModel({
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.password,
        required this.role,
    });

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "role": role,
    };
}

class SuccessClass extends ResultModel {
  String message;
  SuccessClass({
    required this.message
  });
}
