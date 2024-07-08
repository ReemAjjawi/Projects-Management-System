import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/featch_tasks.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../service/featch_tasks_service.dart';
import 'fetch_tasks_event.dart';
import 'fetch_tasks_state.dart';


class  FeatchTasksBloc extends Bloc<FeatchTasksEvent, FeatchTasksState> {
  FeatchTasksBloc() : super(FeatchTasksInitialState()) {
 

    on<FeatchTasks>(
      (event, emit) async {
        print("kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object
        print("iammmmmmmmmmmmmmmmmmmmmmm in bllllllllllllllllllllllllloccccccccccccccccc");
        ResultModel result = await FeatchTasksSerivceImp().featchTasks();
        print(result);
        if (result is ListOf<FeatchTasksModel>) {
          emit((SuccessFeatchTasksState(featchedTasks:result.dataList)));
          
        } else {
          emit(ErrorFetchTasksState(message: result.runtimeType.toString()));
        }
      },
    );
  }
}












