//import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:graduation/model/signupmodel.dart'; 

class ApiService {
  final Dio _dio = Dio(); 
  final String baseUrl = 'https://markaz-el-amal.onrender.com/auth/patient/signup?ln=en'; 

  ApiService() {
    _dio.options.baseUrl = baseUrl; 
    _dio.options.headers['Content-Type'] = 'application/json';
  }

  Future<SignupModel?> signup(String name, String phone, String email, String password) async {
    try {
      final response = await _dio.post('', data: { 
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        return SignupModel.fromJson(response.data);
      } else {
        return null;
      }
    } on DioError catch (e) {
      print('خطأ في الشبكة: ${e.message}');
      return null;
    }
  }
}