import 'package:dio/dio.dart';
import 'package:project_managment_state_managment_bloc/core/config/get_it_config.dart';
import 'package:project_managment_state_managment_bloc/model/projects/project_creation_model.dart';
import 'package:project_managment_state_managment_bloc/model/projects/projects_fetched_modelmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/config/header_config.dart';
import '../url/api.dart';
import '../model/auth/login_model.dart';
import '../model/auth/register_model.dart';
import '../model/handling/handle_model.dart';
import 'core_service.dart';

abstract class ProjectSerivce extends CoreService {
  Future<ResultModel> createProject(ProjectModel obj);
    Future<ResultModel> getAllProject();

}

class ProjectSerivceImp extends ProjectSerivce {
  @override
  Future<ResultModel> createProject(ProjectModel obj) async {
          print("response.statusCode");
          print(baseUrl+Api.createProjectApi);

    try {
      response = await dio.post(baseUrl+Api.createProjectApi, data: obj.toJson(), options: HeaderConfig.getHeader(useToken: true),
);

                print(core.get<SharedPreferences>().getString(
                  'token',)
                );
  
      print(response.statusCode);
      
     ProjectInformationModel pp= ProjectInformationModel.fromJson(response.data);
      
      if (response.statusCode == 200) {
        print(response.data);

                print(core.get<SharedPreferences>().getString(
                  'token',)
                );
  
        return pp;
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      print(e);
      return ExceptionModel(message: e.message!);
    }
  }
  
  @override
  Future<ResultModel> getAllProject() {
    // TODO: implement getAllProject
    throw UnimplementedError();
  }
}






// class ProkectServiceImp extends ProjectService {
//   @override
//   Future<ResultModel> getAllProject() async {
//     try {
//       response = await dio.get(
//         baseurl + '/projects',
//         options: HeaderConfig.getHeader(),
//       );
//       if (response.statusCode == 200) {
//         return ListOf<ProjectModel>(
//           listOfData: List.generate(
//             response.data.length,
//             (index) => ProjectModel.fromMap(
//               response.data[index],
//             ),
//           ),
//         );
//       } else {
//         return ErrorModel();
//       }
//     } on DioException catch (e) {
//       return ExceptionModel(
//         message: e.message!,
//       );
//     }
//   }
// }