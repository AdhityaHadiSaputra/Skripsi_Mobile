import 'package:dio/dio.dart';

class ApiKeyInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    const String fcmServerKey = "AAAA2C2Bu6g:APA91bE8cdzxPU1OzaGrsVBKu41mvz_1JMBOvnOSMJNCDqrAs-kWdexTW3g-L740AeQxMBLYsedWGq8rNDCxI0yg-BiK3wdG4NJvCc4B06bj4gBEfmZ_eDRYB4fmLQjGYsjKUfwGisuY";
    //final SecureKeyDao secureKeyDao = getIt.get();
    //final apiToken = await secureKeyDao.value();
    // if (apiToken != null) {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] = 'key=$fcmServerKey';
    //}
    super.onRequest(options, handler);
  }
}
