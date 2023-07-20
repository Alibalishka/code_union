import 'package:code_union/src/core/constants/app_urls.dart';
import 'package:code_union/src/features/profile/logic/model/model_profile.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class ProfileRepository {
  Dio dio = Dio();
  Box tokenBox = Hive.box('token');

  Future<ModelProfile> loadProfileData() async {
    String token = tokenBox.get('accessToken');
    Response response = await dio.get('${AppUrls.baseUrl}/auth/login/profile',
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }));
    return ModelProfile.fromJson(response.data);
  }
}
