import 'package:code_union/src/core/constants/app_urls.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  Dio dio = Dio();

  Future<String> logInUser(String email, String password) async {
    Response response = await dio.post(
      '${AppUrls.baseUrl}/auth/login',
      data: {
        "email": email,
        "password": password,
      },
    );
    // log('Response: ${response.data['tokens']['accessToken']}');
    return response.data['tokens']['accessToken'].toString();
  }
}
