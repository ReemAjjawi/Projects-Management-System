import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../model/projects/projects_information_model_for_fetch_project.dart';
import '../../../service/fetch_project_service.dart';
import 'fetch_project_event.dart';
import 'fetch_project_state.dart';


class  FetchProjectBloc extends Bloc<FetchProjectEvent, FetchProjectState> {
  FetchProjectBloc() : super(FetchProjectInitialState()) {
 

    on<FetchProject>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await FetchProjectSerivceImp().fetchProject();
       // print(result.)
        if (result is ProjectInformationModelForFetchProject) {
          emit((SuccessFetchProjectState(fetchedProject: result)));
          
        } else {
          emit(ErrorFetchProjectState(message: result.runtimeType.toString()));
        }
      },
    );
  }
}












