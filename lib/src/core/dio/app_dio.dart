import 'dart:io';

import 'package:code_union/src/core/constants/app_urls.dart';
import 'package:code_union/src/core/utils/hive_init.dart';
import 'package:dio/dio.dart';

class AppDio {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrls.baseUrl))
    ..interceptors.add(DioInterceptor());

  set path(String path) => dio = Dio(
        BaseOptions(baseUrl: AppUrls.baseUrl + path),
      )..interceptors.add(DioInterceptor());
}

class DioInterceptor extends Interceptor {
  Dio dio = Dio(BaseOptions(baseUrl: AppUrls.baseUrl));

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!options.uri.path.contains('auth')) {
      options.headers['Authorization'] = 'Bearer ${AppHive.getToken()}';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if ((err.response?.statusCode ?? 0) == HttpStatus.unauthorized) {
      try {
        // Должно сработать Рефреш токен
        await refreshToken();
      } on DioError catch (e) {
        throw e.response!.data;
      }
    }
    super.onError(err, handler);
  }

  Future<void> refreshToken() async {}
}
