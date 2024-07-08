// ignore_for_file: public_member_api_docs, sort_constructors_first


sealed class DeleteProjectEvent {}


class DeleteProject extends DeleteProjectEvent {
int id;
  DeleteProject({
    required this.id,
  });
}
