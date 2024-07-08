import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../model/projects/projects_information_model_for_fetch_project.dart';
import '../../../service/featch_project_service.dart';
import 'fetch_project_event.dart';
import 'fetch_project_state.dart';

class  FeatchProjectBloc extends Bloc<FeatchProjectEvent, FeatchProjectState> {
  FeatchProjectBloc() : super(FeatchProjectInitialState()) {
 

    on<FeatchProject>(
      (event, emit) async {
        print("kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await FeatchProjectSerivceImp().featchProject();
        print("this is result is from project service ================================");
        print(result);
        if (result is ProjectInformationModelForFetchProject) {
          emit((SuccessFeatchProjectState(featchedProject: result)));
          
        } else {
          emit(ErrorFetchProjectState(message: result.runtimeType.toString()));
        }
      },
    );
  }
}












