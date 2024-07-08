import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../model/projects/projects_information_model_for_fetch_project.dart';
import '../../../service/delete_project_service.dart';
import '../../../service/featch_project_service.dart';
import 'delete_project_event.dart';
import 'delete_project_state.dart';


class  DeleteProjectBloc extends Bloc<DeleteProjectEvent, DeleteProjectState> {
  DeleteProjectBloc() : super(DeleteProjectInitialState()) {
 

    on<DeleteProject>(
      (event, emit) async {
        print("kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await DeleteProjectSerivceImp().deleteProject(event.id);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessDeleteProjectState()));
          
        } else {
          emit(ErrorFetchProjectState(message: result.runtimeType.toString()));
        }
      },
    );
  }
}












