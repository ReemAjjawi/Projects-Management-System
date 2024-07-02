import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/config/get_it_config.dart';
import '../url/api.dart';
import '../model/auth/login_model.dart';
import '../model/auth/register_model.dart';
import '../model/handling/handle_model.dart';
import 'core_service.dart';

abstract class LoginSerivce extends CoreService {
  Future<ResultModel> logIn(LoginModel obj);
}

class LoginSerivceImp extends LoginSerivce {
  @override
  Future<ResultModel> logIn(LoginModel obj) async {
          print("response.statusCode");

    try {
      response = await dio.post(baseUrl+Api.loginApi, data: obj.toJson());
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
      return ExceptionModel(message: e.toString());
    }
  }
}


// abstract class AuthService extends CoreService {
//   Future<ResultModel> signUp(SignupUserModel user);
//   Future<ResultModel> logIn();
//   Future<ResultModel> logOut();
//   Future<ResultModel> resestPassword();
// }

