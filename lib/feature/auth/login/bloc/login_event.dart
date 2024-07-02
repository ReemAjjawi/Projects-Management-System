// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';

import '../../../model/auth/login_model.dart';


sealed class LoginEvent {}


class Login extends LoginEvent {
  LoginModel user;
  Login({
    required this.user,
  });
}
