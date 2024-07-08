// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../model/projects/projects_information_model_for_fetch_project.dart';

sealed class FeatchProjectState {}

final class FeatchProjectInitialState extends FeatchProjectState {}

class SuccessFeatchProjectState extends FeatchProjectState {
ProjectInformationModelForFetchProject featchedProject;
  SuccessFeatchProjectState({
    required this.featchedProject,
  });
}

class ErrorFetchProjectState extends FeatchProjectState {
  String message;
  ErrorFetchProjectState({
    required this.message,
  });
}











