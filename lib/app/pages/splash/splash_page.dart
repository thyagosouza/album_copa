// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/styles/button_styles.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../core/ui/widgets/button_widget.dart';
import '../../core/ui/widgets/rounded_button_widget.dart';
import 'presenter/splash_presenter.dart';
import 'view/splash_view_impl.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;
  const SplashPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/images/fifa_logo.png',
                height: MediaQuery.of(context).size.height * .25,
              ),
            ),
            Positioned(
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).size.height * 0.19,
              child: ButtonWidget(
                onPressed: () {
                  widget.presenter.checkLogin();
                },
                style: context.buttonStyles.yellowButton,
                labelStyle:
                    context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                label: 'Acessar',
                outline: false,
              ),
            ),
            Positioned(
              right: 15,
              left: 15,
              bottom: MediaQuery.of(context).size.height * 0.02,
              child: Image.asset('assets/images/bandeiras.png'),
            ),
          ],
        ),
      ),
    );
  }
}
