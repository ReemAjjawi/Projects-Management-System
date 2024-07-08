// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../model/projects/projects_information_model_for_fetch_project.dart';

sealed class DeleteProjectState {}

final class DeleteProjectInitialState extends DeleteProjectState {}

class SuccessDeleteProjectState extends DeleteProjectState {

}

class ErrorFetchProjectState extends DeleteProjectState {
  String message;
  ErrorFetchProjectState({
    required this.message,
  });
}
class LoadingState extends DeleteProjectState {}












