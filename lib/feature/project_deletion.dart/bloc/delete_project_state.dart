// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../model/projects/projects_information_model_for_fetch_project.dart';

sealed class FetchProjectState {}

final class FetchProjectInitialState extends FetchProjectState {}

class SuccessFetchProjectState extends FetchProjectState {
ProjectInformationModelForFetchProject fetchedProject;
  SuccessFetchProjectState({
    required this.fetchedProject,
  });
}

class ErrorFetchProjectState extends FetchProjectState {
  String message;
  ErrorFetchProjectState({
    required this.message,
  });
}
class LoadingState extends FetchProjectState {}












