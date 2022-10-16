import 'package:flutter/widgets.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF791435);
  Color get secondary => const Color(0xFFFDCE50);
  Color get yellow => const Color(0xFFFDCE50);
  Color get grey => const Color(0xFFCCCCCC);
  Color get greyDark => const Color(0xFF999999);
  Color get black => const Color(0xFF000000);
  Color get white => const Color(0xFFFFFFFF);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
