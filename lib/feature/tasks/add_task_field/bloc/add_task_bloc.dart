import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/add_task_field/bloc/add_task_state.dart';

import 'add_task_event.dart';

class FieldAdditionBloc extends Bloc<FieldAdditionEvent, FieldAdditionState> {
  FieldAdditionBloc() : super(FieldInitialAdditionState()) {
    on<Addition>((event, emit) {
      print("hi");

      List<String> cont = event.cont;
      x = event.x;
      print("hfgjj");
      print(x);
      print(cont);
      if (cont != []) {
        emit(ListFieldAdditionSuccessState(cont: cont, x: x));
      }
    });
  }
}
