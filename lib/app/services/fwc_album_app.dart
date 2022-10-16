import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/ui/global/global_context.dart';
import 'package:fwc_album_app/app/core/ui/global/global_context_impl.dart';
import 'package:fwc_album_app/app/pages/auth/login/login_route.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_route.dart';
import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:fwc_album_app/app/pages/splash/splash_route.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository_impl.dart';

import '../core/rest/custom_dio.dart';
import '../core/ui/theme/theme_config.dart';
import '../pages/home/home_page.dart';

class FwcAlbumApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>(
          (i) => AuthRepositoryImpl(dio: i()),
        ),
        Bind.lazySingleton<GlobalContext>(
          (i) => GlobalContextImpl(
            navigatorKey: navigatorKey,
            authRepository: i(),
          ),
        ),
      ],
      child: MaterialApp(
        title: "Fifa World Cup Album",
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeConfig.theme,
        routes: {
          "/": (_) => SplashRoute(),
          "/auth/login": (_) => LoginRoute(),
          "/auth/register": (_) => RegisterRoute(),
          "/home": (_) => HomePage(),
        },
      ),
    );
  }
}
