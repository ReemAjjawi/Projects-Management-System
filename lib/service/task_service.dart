
import 'package:dio/dio.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';
import 'package:project_managment_state_managment_bloc/url/api.dart';

import '../core/config/header_config.dart';
import '../model/auth/register_model.dart';
import '../model/handling/handle_model.dart';
import 'core_service.dart';

abstract class TaskSerivce extends CoreService {
    Future<ResultModel> getAllTask();
    Future<ResultModel> createTask(List <TaskModel> obj);
        Future<ResultModel> deleteTask(TaskModel obj);



}

class TaskSerivceImp extends TaskSerivce {
  @override
  Future<ResultModel> createTask(List <TaskModel> obj) async {
          print("response.statusCode");

    try {
      response = await dio.post(baseUrl+Api.createTasksApi, data: taskModelToJson(obj), options: HeaderConfig.getHeader(useToken: true),
);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);

  
        return SuccessClass( message: '');
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      return ExceptionModel(message: e.message!);
    }
  }
  

  

  
  @override
  Future<ResultModel> getAllTask() async{
       print("response.statusCode");

    try {
      response = await dio.get(baseUrl+Api.getTasksApi, options: HeaderConfig.getHeader(),
);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);

  
        return ListOf(dataList: []);
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      return ExceptionModel(message: e.message!);
    }
  }
  

  
  @override
  Future<ResultModel> deleteTask(TaskModel obj)async {
     print("response.statusCode");

    try {
      response = await dio.delete(baseUrl+Api.getTasksApi, options: HeaderConfig.getHeader(),
);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);

  
        return SuccessClass(message: "message");
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      return ExceptionModel(message: e.message!);
    }
  }
}