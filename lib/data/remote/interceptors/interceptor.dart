import 'package:dio/dio.dart';

import '../../../component/keys.dart';

class ApiKeyInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] = 'key=${Keys.fcmServerKey}';

    super.onRequest(options, handler);
  }
}
