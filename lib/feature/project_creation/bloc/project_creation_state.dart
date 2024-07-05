// ignore_for_file: public_member_api_docs, sort_constructors_first


sealed class CreateProjectState {}

final class CreateProjectInitialState extends CreateProjectState {}

class SuccessCreateProjectState extends CreateProjectState {
int id;
  SuccessCreateProjectState({
    required this.id,
  });
}

class ErrorState extends CreateProjectState {
  String message;
  ErrorState({
    required this.message,
  });
}
class LoadingState extends CreateProjectState {}













// import 'package:get_it/get_it.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// GetIt core = GetIt.instance;


// setup()async{
//   core.registerSingleton(await SharedPreferences.getInstance());
// }



// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:store_data_from_api/config/core_config.dart';
// import 'package:store_data_from_api/config/heares_config.dart';
// import 'package:store_data_from_api/model/user_info_model.dart';
// import 'package:store_data_from_api/model/user_model.dart';
// import 'package:store_data_from_api/service/peaple_service.dart';

// class UserService extends Service {
//   Future<bool> logIn(UserModel user) async {
//     response = await dio.post('https://dummyjson.com/auth/login',
//         data: user.toMap(), options: getHeader(useToken: false));
//     if (response.statusCode == 200) {
//       core.get<SharedPreferences>().setString('token', response.data['token']);
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<UserInfoModel?> getMyInfo() async {
//     try {
//       response =
//           await dio.get('https://dummyjson.com/auth/me', options: getHeader());
//       if (response.statusCode == 200) {
//         UserInfoModel user = UserInfoModel.fromMap(response.data);
//         return user;
//       } else {
//         return null;
//       }
//     } on DioException catch (e) {
//       print(e);
//       return null;
//     }
//   }
// }


// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:store_data_from_api/config/core_config.dart';

// Options getHeader({bool useToken = true}) {
//   if (useToken) {
//     return Options(
//       headers: {
//         'Authorization':
//             'Bearer ${core.get<SharedPreferences>().getString('token')}',
//       },
//     );
//   } else {
//     return Options();
//   }
// }