import 'package:flutter/material.dart';

class Palette {
  static const int _palettePrimaryValue = 0xFF044188;

  //Primary
  static const Color primaryColor = Color(0xFF044188);

  // http://mcg.mbitson.com/#!?mcgpalette0=%23044188 - generating primaryswatch
  // https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4 - opacity to color table
  static const MaterialColor primarySwatch =
      MaterialColor(_palettePrimaryValue, <int, Color>{
    50: Color(0xFFe1e8f1),
    100: Color(0xFFb4c6db),
    200: Color(0xFF82a0c4),
    300: Color(0xFF4f7aac),
    400: Color(0xFF2a5e9a),
    500: Color(_palettePrimaryValue),
    600: Color(0xFF033b80),
    700: Color(0xFF033275),
    800: Color(0xFF022a6b),
    900: Color(0xFF011c58),
  });

  static const accent = Color(_palettePrimaryValue);
  static const background = Color(0xffF1F2F5);
  static const text = Color(0xff1C1C1C);
  static const icon = Color(0xff1C1C1C);
  static const blackArrow = Color(0xff111111);
  static const textOrange = Color(0xffE37F09);
  static const clean = Color(0xffffffff);
  static const primary60 = Color(0xff638AAF);
  static const primary100 = Color(0xff044188);
  static const primary80 = Color(0xff059DC2);
  static const primary40 = Color(0xffA8B8C1);

  static const border = Color(0xffE0E0E0);
  static const subtitles = Color(0xff5E5D5D);
  static const error = Color(0xffD34545);
  static const subtitles40 = Color(0xff9C9B9B);
  static const success = Color(0xff02BD15);

  static const tabBarActive = Color(0xffF1F2F5);
  static const tabBar = Color(0xffffffff);

  static const textLight = Color(0xff5E5D5D);

  static const buttonLightPink = Color(0xffFEE2E2);

  static const buttonViolet = Color(0xff6359EF);
  static const buttonBlue = Color(0xff26ADFD);
  static const buttonBlueDark = primary80;

  static const buttonGrey = Color(0xffE0E0E0);
  static const buttonBorderGrey = subtitles40;

  static const inputBorder = Color(0xffA8B8C1);
  static const inputBorderActive = primary100;
  static const inputBorderGreyDark = Color(0xff5E5D5D);

  static const blueButtonGradient1 = Color(0xff00CCFF);
  static const blueButtonGradient2 = Color(0xff09A3CA);

  static const activeButtonGradient1 = Color(0xff00CCFF);
  static const activeButtonGradient2 = Color(0xff09A3CA);

  static const errorGradient1 = Color(0xffE86767);
  static const errorGradient2 = Color(0xffD34545);

  static const divider = Color(0xffE0E0E0);

  static const messageBackgroundBlue = Color(0xff0BB7E2);
  static const messageBackgroundGrey = Color(0xffE6E5EB);

  static const splashBackground = Color(0xFFe1e8f1);
  static const dialogBackground = Color(0x21000000);

  static const backgroundShadow = Color(0x1A070936);

  static const appbarBackgroundDark = Color(0xFF1f1f1f);

  static const textButtonShadow = Color(0x29AEAEAE29);

  static const editFieldShadow = Color(0x16AEAEAEAE);
  static const disabledEditField = Color(0xffA8B8C1);

  static const accentButtonOverlay = Color(0xff044188);
  static const redAccentButtonOverlay = Color(0xffce3e3e);

  static const switchShadowGray = Color(0x15000000);
  static const switchShadowBrown = Color(0x25333333);

  static const dialogShadow = Color(0x10070936);

  static const subscriptionType = Color(0xfff48f18);
  static const ebayNoLinked = Color(0xffDE7D0A);

  static const calendarShadowGray = Color(0x10000000);
}
