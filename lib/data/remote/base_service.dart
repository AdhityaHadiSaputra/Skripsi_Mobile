import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../resources/environment.dart';
import 'interceptors/interceptor.dart';

class BaseService {
  final Dio _dio;

  BaseService(this._dio);

  factory BaseService.create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Environment.env.baseUrl,
        connectTimeout: Environment.env.connectionTimeout,
        receiveTimeout: Environment.env.receiveTimeout,
        responseType: ResponseType.plain,
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          responseHeader: true,
          requestBody: true,
        ),
      );
      dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    }
    dio.interceptors.add(ApiKeyInterceptors());
    return BaseService(dio);
  }

  Dio get dio => _dio;
}
