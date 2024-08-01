import 'package:dio/dio.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/featch_tasks.dart';
import '../core/config/header_config.dart';
import '../model/handling/handle_model.dart';
import '../url/api.dart';
import 'core_service.dart';

abstract class FeatchTasksSerivce extends CoreService {
  Future<ResultModel> featchTasks();
}

class FeatchTasksSerivceImp extends FeatchTasksSerivce {
  @override
  Future<ResultModel> featchTasks() async {
    print("response.statusCode");

    try {
      response = await dio.get(
        baseUrl + Api.getTasksApi + "3816",
        options: HeaderConfig.getHeader(useToken: true),
      );
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200) {
        return ListOf<FeatchTasksModel>(
          dataList: List.generate(
            response.data.length,
            (index) => FeatchTasksModel.fromJson(
              response.data[index],
            ),
          ),
        );
      } else {
        return ErrorModel(message: "There is no Internet");
      }
    } on DioException catch (e) {
      print(" IN TASK");
      print(e);
      return ExceptionModel(message: e.message!);
    }
  }
}
