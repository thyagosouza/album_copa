import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

import '../styles/button_styles.dart';
import '../styles/colors_app.dart';

class ThemeConfig {
  ThemeConfig._();
  static final _defaultImputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      color: ColorsApp.i.greyDark,
      width: 1,
    ),
  );
  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyles.i.textPrimaryFontBold.copyWith(
        color: ColorsApp.i.black,
        fontSize: 18,
      ),
    ),
    primaryColor: ColorsApp.i.primary,
    //* COR BASE
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.i.primary,
      primary: ColorsApp.i.primary,
      secondary: ColorsApp.i.secondary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsApp.i.white,
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.all(13),
      labelStyle: TextStyles.i.labelTextField,
      border: _defaultImputBorder,
      enabledBorder: _defaultImputBorder,
      focusedBorder: _defaultImputBorder,
    ),
  );
}
