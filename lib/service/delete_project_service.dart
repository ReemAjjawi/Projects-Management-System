



import 'package:shared_preferences/shared_preferences.dart';

import '../core/config/get_it_config.dart';
import '../core/config/header_config.dart';
import '../model/handling/handle_model.dart';
import '../url/api.dart';
import 'core_service.dart';

abstract class DeleteProjectSerivce extends CoreService {
  Future<ResultModel> deleteProject(int id);
}

class DeleteProjectSerivceImp extends DeleteProjectSerivce {
  @override
  Future<ResultModel> deleteProject(int id) async {
          print("response.statusCode");

    try {
      response = await dio.delete(baseUrl+Api.deleteProjectApi,options:HeaderConfig.getHeader(useToken: true) );
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);
   String token = response.data['access_token'];
        core.get<SharedPreferences>().setString('token', token);
print(token);
        return SuccessClass(message: "messag");
   } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    } catch (e) {
            print(e);

      return ExceptionModel(message: e.toString());
    }
  }
}

