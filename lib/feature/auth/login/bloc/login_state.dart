// ignore_for_file: public_member_api_docs, sort_constructors_first


sealed class LoginState {}

final class LoginInitialState extends LoginState {}

class SuccessLoginState extends LoginState {

}

class ErrorState extends LoginState {}

class LoadingState extends LoginState {}











