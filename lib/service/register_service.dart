import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/config/get_it_config.dart';
import '../url/api.dart';
import '../model/auth/register_model.dart';
import '../model/handling/handle_model.dart';
import 'core_service.dart';

abstract class RegisterSerivce extends CoreService {
  Future<ResultModel> signUp(RegisterModel obj);
}

class RegisterSerivceImp extends RegisterSerivce {
  @override
  Future<ResultModel> signUp(RegisterModel obj) async {
          print("response.statusCode");

    try {          print(baseUrl+Api.registerApi);

      response = await dio.post(baseUrl+Api.registerApi, data: obj.toJson());
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);
   String token = response.data['access_token'];
        core.get<SharedPreferences>().setString('token', token);
print(token);
        return SuccessClass(message: "kb");
      } else {
          return ErrorModel(message: "There is no Internet");
        }
      
    }on DioException catch (e) {
      return ExceptionModel(message: e.toString());
    }
  }
}

