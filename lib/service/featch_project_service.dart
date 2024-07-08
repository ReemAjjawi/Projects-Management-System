import 'package:dio/dio.dart';

import '../core/config/header_config.dart';
import '../model/handling/handle_model.dart';
import '../model/projects/projects_information_model_for_fetch_project.dart';
import '../url/api.dart';
import 'core_service.dart';




abstract class FetchProjectSerivce extends CoreService {
  Future<ResultModel> featchProject();

}

class FeatchProjectSerivceImp extends FetchProjectSerivce {
  @override
  Future<ResultModel> featchProject( ) async {
          print("response.statusCode");
          print(baseUrl+Api.getProject+"2");

    try {
      response = await dio.get(baseUrl+Api.getProject+"3816", options: HeaderConfig.getHeader(useToken: true),
);

print("iam reemeeeeeeee");
print(response.data);
ProjectInformationModelForFetchProject featchedProject=ProjectInformationModelForFetchProject.fromJson(response.data);
  
      print(response.statusCode);
      
      print("IN PROJECT SERVICE");
      if (response.statusCode == 200) {
        print(response.data);

              
  
        return featchedProject;
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      print(e);
      return ExceptionModel(message: e.message!);
    }
  }
  
 
}



