import 'package:flutter/material.dart';

class Palette {
  static const int _palettePrimaryValue = 0xFF044188;

  //Primary
  static const Color primaryColor = Color(0xFF044188);

  // http://mcg.mbitson.com/#!?mcgpalette0=%23044188 - generating primaryswatch
  // https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4 - opacity to color table
  static const MaterialColor primarySwatch =
      MaterialColor(_palettePrimaryValue, <int, Color>{
    50: Color(0xFFE9EBFA),
    100: Color(0xFFC8CEF3),
    200: Color(0xFFA3ADEB),
    300: Color(0xFF7E8CE3),
    400: Color(0xFF6373DD),
    500: Color(_palettePrimaryValue),
    600: Color(0xFF4052D3),
    700: Color(0xFF3748CD),
    800: Color(0xFF2F3FC7),
    900: Color(0xFF202EBE),
  });

  static const accent = Color(_palettePrimaryValue);
  static const background = Color(0xffffffff);
  static const text = Color(0xff666C8E);
  static const icon = Color(0xff1C1C1C);

  static const clean = Color(0xffffffff);

  static const primary100 = Color(0xff044188);
  static const primary80 = Color(0xff059DC2);
  static const primary40 = Color(0xffA8B8C1);

  static const border = Color(0xffE0E0E0);
  static const subtitles = Color(0xff5E5D5D);
  static const error = Color(0xffD34545);
  static const subtitles40 = Color(0xff9C9B9B);
  static const success = Color(0xff02BD15);

  static const tabBarActive = Color(_palettePrimaryValue);
  static const tabBar = Color(0xffACAFC3);

  static const tabBarShadow = Color(0x52ACAFC3);

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

  static const textButtonShadow = Color(0x29AEAEAE);

  static const editFieldShadow = Color(0x16AEAEAE);
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
