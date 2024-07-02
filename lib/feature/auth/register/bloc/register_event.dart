// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';


sealed class RegisterEvent {}


class SignUp extends RegisterEvent {
  RegisterModel user;
  SignUp({
    required this.user,
  });
}
