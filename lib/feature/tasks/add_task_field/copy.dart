// ignore_for_file: public_member_api_docs, sort_constructors_first






import '../../../../model/tasks/tasks_model.dart';

sealed class TaskEvent {}


class CreateTask extends TaskEvent {
  TaskModel task;
  CreateTask({
    required this.task,
  });
}





sealed class TaskState {}

final class TaskInitialState extends TaskState {}

class SuccessTaskCreationState extends TaskState {

}


class ErrorState extends TaskState {
  String message;
  ErrorState({
    required this.message,
  });
}
class LoadingState extends TaskState {}



// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';



// sealed class TaskEvent {}


// class CreateTask extends TaskEvent {
//   TaskModel task;
//   CreateTask({
//     required this.task,
//   });
// }



// class DeleteTask extends TaskEvent {
//   TaskModel task;
//   DeleteTask({
//     required this.task,
//   });
// }

// class GetAllTask extends TaskEvent {

// }





// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../model/auth/register_model.dart';
// import '../../../../model/handling/handle_model.dart';
// import '../../../../service/task_service.dart';
// import '../../task_field/bloc/tasks_event.dart';
// import '../../task_field/bloc/tasks_state.dart';
// import 'tasks_event.dart';
// import 'tasks_state.dart';


// class TaskBloc extends Bloc<TaskEvent, TaskState> {
//   TaskBloc() : super(TaskInitialState()) {
 

//     on<CreateTask>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object 
//         ResultModel result = await TaskSerivceImp().createTask(event.task);
//        // print(result.)
//         if (result is SuccessClass) {
//           emit((SuccessTaskCreationState()));
          
//         } else {
//           emit(ErrorState(message: ''));
//         }
//       },
//     );
//    on<GetAllTask>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object 
//         ResultModel result = await TaskSerivceImp().getAllTask();
//        // print(result.)
//         if (result is SuccessClass) {
//           emit((SuccessTaskCreationState()));
          
//         } else {
//           emit(ErrorState(message: ''));
//         }
//       },
//     );


//     on<DeleteTask>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object 
//         ResultModel result = await TaskSerivceImp().deleteTask(event.task);
//        // print(result.)
//         if (result is SuccessClass) {
//           emit((SuccessTaskCreationState()));
          
//         } else {
//           emit(ErrorState(message: ''));
//         }
//       },
//     );


//   }
// }



















