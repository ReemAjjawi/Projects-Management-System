// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';



sealed class TaskEvent {}


class CreateTask extends TaskEvent {
  TaskModel task;
  CreateTask({
    required this.task,
  });
}
