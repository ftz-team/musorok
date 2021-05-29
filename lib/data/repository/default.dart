import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<Dio> getApiClient() async {

  var _dio = Dio();

  final storage = new FlutterSecureStorage();

  _dio.options.baseUrl = 'https://www.xx.com/api';

  var token = await storage.read(key: "USER_TOKEN");
  _dio.interceptors.clear();
  _dio.options.headers["Authorization"] = "Token " + token!;
  return _dio;
}

//await storage.write(key: key, value: value);


Future<bool> isTokenValid(String token) async{
  return await false;
}