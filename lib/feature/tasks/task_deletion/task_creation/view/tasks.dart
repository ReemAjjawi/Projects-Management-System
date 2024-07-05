
// class TaskBlocDeletion extends Bloc<TaskDeletionEvent, TaskDeletionState> {
//   TaskBlocDeletion() : super(TaskInitialState()) {
 

   

//     on<DeleteTask>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object 
//         ResultModel result = await TaskSerivceImp().deleteTask(event.id);
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




// sealed class TaskDeletionEvent {}



// class DeleteTask extends TaskDeletionEvent {
// int id;
//   DeleteTask({
//     required this.id,
//   });
// }


// sealed class TaskDeletionState {}

// final class TaskInitialState extends TaskDeletionState {}

// class SuccessTaskDeletiontionState extends TaskDeletionState {

// }


