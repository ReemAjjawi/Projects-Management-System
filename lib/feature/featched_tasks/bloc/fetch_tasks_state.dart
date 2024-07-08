// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_managment_state_managment_bloc/model/handling/handle_model.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/featch_tasks.dart';

import '../../../model/projects/projects_information_model_for_fetch_project.dart';

sealed class FeatchTasksState {}

final class FeatchTasksInitialState extends FeatchTasksState {}

class SuccessFeatchTasksState extends FeatchTasksState {
List <FeatchTasksModel> featchedTasks;
  SuccessFeatchTasksState({
    required this.featchedTasks,
  });
}

class ErrorFetchTasksState extends FeatchTasksState {
  String message;
  ErrorFetchTasksState({
    required this.message,
  });
}
class LoadingState extends FeatchTasksState {}












