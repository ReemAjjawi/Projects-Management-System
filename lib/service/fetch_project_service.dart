import 'package:dio/dio.dart';

import '../core/config/header_config.dart';
import '../model/handling/handle_model.dart';
import '../model/projects/projects_information_model_for_fetch_project.dart';
import '../url/api.dart';
import 'core_service.dart';




abstract class FetchProjectSerivce extends CoreService {
  Future<ResultModel> fetchProject();

}

class FetchProjectSerivceImp extends FetchProjectSerivce {
  @override
  Future<ResultModel> fetchProject( ) async {
          print("response.statusCode");
          print(baseUrl+Api.getProject+"2");

    try {
      response = await dio.get(baseUrl+Api.createProjectApi, options: HeaderConfig.getHeader(useToken: true),
);
ProjectInformationModelForFetchProject fetchedProject=ProjectInformationModelForFetchProject.fromJson(response.data);

                // print(core.get<SharedPreferences>().getString(
                //   'token',)
                // );
  
      print(response.statusCode);
      
      print("hiiiiiiiiiiiii");
      if (response.statusCode == 200) {
        print(response.data);

              
  
        return fetchedProject;
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      print(e);
      return ExceptionModel(message: e.message!);
    }
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