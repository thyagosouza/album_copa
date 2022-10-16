import 'package:dio/dio.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/ui/global/global_context.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');
    options.headers['Autorization'] = 'Bearer $accessToken';
    //? se essa linha não for colocada
    //? o REQUEST será abortado, ignorado
    handler.next(options); //! ATENÇÃO!!!
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      Injector.get<GlobalContext>().loginExpire();
    } else {
      handler.next(err);
    }
  }
}
