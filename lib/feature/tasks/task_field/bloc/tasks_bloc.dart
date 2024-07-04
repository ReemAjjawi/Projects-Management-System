// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../model/auth/register_model.dart';
// import '../../../../model/handling/handle_model.dart';
// import '../../../../service/task_service.dart';
// import 'tasks_event.dart';
// import 'tasks_state.dart';

// class CreateTask extends FieldAdditionEvent {
 
// }

// class FieldAdditionEvent {
// }


// sealed class FieldAdditionState {}

// final class FieldInitialAdditionState extends FieldAdditionState {
//   late int x;
  
//   FieldInitialAdditionState(x);

// }

// class FieldAdditionSuccessState extends FieldAdditionState {
// late int x;
// FieldAdditionSuccessState(x);
// }
// class Addition  extends FieldAdditionState{

// }

// class FieldAdditionBloc extends Bloc<FieldAdditionEvent, FieldAdditionState> {
//   int x=1;

//   FieldAdditionBloc(
//     this.x,
//   ) : super(FieldInitialAdditionState(x)) {
 
//     on<FieldAdditionEvent>(
//       (event, emit) async {
   
//         // ! We Can Find The attribute of Event in the 'event' object 
//        // print(result.)
      
//           if (state is Addition){
//             x++;
//           }
//           emit((FieldAdditionSuccessState(x)));
          
        
//       },
//     );
//   }}
