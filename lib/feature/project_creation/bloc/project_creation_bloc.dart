import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';
import 'package:project_managment_state_managment_bloc/service/project_service.dart';
import '../../../model/handling/handle_model.dart';
import 'project_creation_event.dart';
import 'project_creation_state.dart';


class CreateProjectBloc extends Bloc<CreateProjectEvent, CreateProjectState> {
 CreateProjectBloc() : super(CreateProjectInitialState()) {
 

    on<CreateProject>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await ProjectSerivceImp().createProject(event.project);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessCreateProjectState()));
          
        } else {
          emit(ErrorState(message: result.runtimeType.toString()));
        }
      },
    );
  }
}












