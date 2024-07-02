import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';
import 'package:project_managment_state_managment_bloc/feature/login/bloc/login_event.dart';
import 'package:project_managment_state_managment_bloc/feature/login/bloc/login_state.dart';
import '../../../model/handling/handle_model.dart';
import '../../../service/login_service.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
 

    on<Login>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await LoginSerivceImp().logIn(event.user);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessLoginState()));
          
        } else {
          emit(ErrorState());
        }
      },
    );
  }
}












