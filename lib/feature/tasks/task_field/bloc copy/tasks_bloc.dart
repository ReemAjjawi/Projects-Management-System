import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../model/auth/register_model.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../../model/tasks/tasks_model.dart';
import '../../../../service/task_service.dart';
import 'tasks_event.dart';
import 'tasks_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitialState()) {
 

    on<CreateTask>(
      (event, emit) async {
        emit(LoadingState());
      int  length=event.task.length;
        List <TaskModel> tt= [];
        for (var element in event.task){
TaskModel x=TaskModel(taskDescription: element, taskStatus: "NEW", projectId: 4);
tt.add(x);
        }
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await TaskSerivceImp().createTask(tt);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessTaskCreationState()));
          
        } else {
          emit(ErrorState(message: ''));
        }
      },
    );
   on<GetAllTask>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await TaskSerivceImp().getAllTask();
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessTaskCreationState()));
          
        } else {
          emit(ErrorState(message: ''));
        }
      },
    );


    on<DeleteTask>(
      (event, emit) async {
        emit(LoadingState());
        // ! We Can Find The attribute of Event in the 'event' object 
        ResultModel result = await TaskSerivceImp().deleteTask(event.task);
       // print(result.)
        if (result is SuccessClass) {
          emit((SuccessTaskCreationState()));
          
        } else {
          emit(ErrorState(message: ''));
        }
      },
    );


  }
}












