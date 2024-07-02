// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../model/auth/register_model.dart';
// import '../../../../model/handling/handle_model.dart';
// import '../../../../service/task_service.dart';
// import 'login_event.dart';
// import 'login_state.dart';


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
//           emit(ErrorState());
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
//           emit(ErrorState());
//         }
//       },
//     );


//   }
// }












