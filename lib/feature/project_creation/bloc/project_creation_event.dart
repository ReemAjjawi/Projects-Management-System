// ignore_for_file: public_member_api_docs, sort_constructors_first


import '../../../model/projects/project_creation_model.dart';

sealed class CreateProjectEvent {}


class CreateProject extends CreateProjectEvent {
  ProjectModel project;
  CreateProject({
    required this.project,
  });
}
