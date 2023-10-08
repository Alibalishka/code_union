import 'package:code_union/src/core/dio/app_dio.dart';
import 'package:code_union/src/features/auth/logic/model/user_model.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  Dio dio = AppDio().dio;

  Future<UserModel> logInUser(String email, String password) async {
    Response response = await dio.post(
      '/auth/login',
      data: {
        "email": email,
        "password": password,
      },
    );
    return UserModel.fromJson(response.data);
  }
}
