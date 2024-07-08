import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/task_creation/bloc/tasks_event.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/task_creation/bloc/tasks_state.dart';
import 'package:project_managment_state_managment_bloc/service/task_service.dart';

import '../../../../model/auth/register_model.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../../model/tasks/tasks_model.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitialState()) {
    on<CreateTask>(
      (event, emit) async {
        print("hggg");

        emit(LoadingState());
        int length = event.task.length;
        List<TaskModel> tt = [];
        print("hggg");
        for (var element in event.task) {
          TaskModel x = TaskModel(
              taskDescription: element, taskStatus: "NEW", project_id: 3816);
          tt.add(x);
          print(tt);
        }
        // ! We Can Find The attribute of Event in the 'event' object
        ResultModel result = await TaskSerivceImp().createTask(tt);
        print(result);
        if (result is SuccessClass) {
          emit((SuccessTaskCreationState()));
        } else {
          emit(ErrorState(message: ''));
        }
      },
    );
  }
}
