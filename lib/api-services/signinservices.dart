 import 'package:dio/dio.dart';
import 'package:graduation/model/signingmodel.dart';


class SignInServices{
  final Dio _dio =Dio();
   
   Future<SignInModel?> signin(String email,String Password)async{
    final String url = 'https://markaz-el-amal.onrender.com/auth/patient/login?ln=ar';
    try{
      final Map<String,dynamic> data ={
       'email':email,
       'password':Password,
      };

    
    final Response response = await _dio.post(url,data: data);

    if (response.statusCode ==200){
      return SignInModel.fromJson(response.data);
    }
    else{
       print('Error:${response.statusCode} - ${response.statusMessage}');
       return null;
    }

    }catch(e){
      print('Dio error : $e');
      return null;
    }
   }
 }