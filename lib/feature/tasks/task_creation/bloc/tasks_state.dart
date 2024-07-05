import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../model/auth/register_model.dart';
import '../../../../model/handling/handle_model.dart';
import '../../../../model/tasks/tasks_model.dart';
import '../../../../service/task_service.dart';

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
