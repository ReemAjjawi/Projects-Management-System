import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';
import 'package:project_managment_state_managment_bloc/feature/login/view/login.dart';

import '../../../model/handling/handle_model.dart';
import '../../../service/register_service.dart';
import 'register_event.dart';
import 'register_state.dart';


class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitialState()) {
 

    on<SignUp>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await RegisterSerivceImp().signUp(event.user);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessRegisterState()));
          
        } else {
          emit(ErrorState());
        }
      },
    );
  }
}












