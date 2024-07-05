sealed class TaskEvent {}


class CreateTask extends TaskEvent {
  List <String> task;
  CreateTask({
    required this.task,
  });
}
