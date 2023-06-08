// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/material.dart';

class CustomIcons {
  CustomIcons._();

  static const String _fontFamily = 'CustomIcons';

  static const IconData search = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData sections = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData tags = IconData(0xe903, fontFamily: _fontFamily);
}
