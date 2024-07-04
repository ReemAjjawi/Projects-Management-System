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












