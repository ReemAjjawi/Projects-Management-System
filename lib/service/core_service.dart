import 'package:dio/dio.dart';

abstract class CoreService {
  Dio dio = Dio();
  late Response response;
  String baseUrl = "https://projects-management-system.onrender.com/api/v1/";
}
