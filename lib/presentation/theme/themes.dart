import 'dart:io';

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/palette.dart';

class AppTheme {
  static const TextStyle _globalTextStyle =
      TextStyle(fontFamily: 'Inter', fontFamilyFallback: ['sans-serif']);

  static ThemeData getTheme({double fontCoefficient = 1.0}) => ThemeData(
        primarySwatch: Palette.primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        popupMenuTheme: const PopupMenuThemeData(
          color: Palette.background,
        ),

        // This is the background color of major parts of the app like toolbars,
        // tab bars, appbar, and many more.
        primaryColor: Palette.accent,
        useMaterial3: Platform.isAndroid,

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Palette.primarySwatch,
          primaryColorDark: Palette.primarySwatch.shade600,
          accentColor: Palette.accent,
          cardColor: Palette.background,
          backgroundColor: Palette.background,
          errorColor: Palette.error,
          // brightness: Brightness.light,
        ),

        splashColor: Palette.splashBackground,
        splashFactory: InkRipple.splashFactory,

        /// The color of ink splashes. See [InkWell].
        highlightColor: Palette.accent.withOpacity(0.05),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Palette.clean,
          elevation: 0.0,
          selectedIconTheme: const IconThemeData(color: Palette.text),
          unselectedIconTheme: const IconThemeData(color: Palette.text),
          selectedItemColor: Palette.text,
          unselectedItemColor: Palette.text,
          selectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: Palette.text,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: Palette.text,
            fontWeight: FontWeight.w400,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
        ),

        appBarTheme: const AppBarTheme(backgroundColor: Palette.clean),

        chipTheme:
            const ChipThemeData(backgroundColor: Palette.buttonLightPink),

        checkboxTheme: CheckboxThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),

        dialogTheme: DialogTheme(
          backgroundColor: Palette.background,
          // elevation,
          actionsPadding: const EdgeInsets.only(bottom: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.dialogRadius),
          ),
          titleTextStyle: _globalTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Palette.text,
          ),
        ),

        bottomSheetTheme: const BottomSheetThemeData(
            modalBarrierColor: Colors.transparent,
            modalBackgroundColor: Palette.clean,
            modalElevation: 3,
            backgroundColor: Palette.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Constants.dialogRadius)),
            )),

        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.buttonRadius),
          ),
          buttonColor: Palette.accent,
          disabledColor: Palette.primarySwatch.shade300,
          height: 54,
        ),
        textTheme: TextTheme(
          // большие заголовки
          headlineLarge: TextStyle(
              fontSize: 24 * fontCoefficient,
              fontWeight: FontWeight.w500, // regular
              color: Palette.text),

          // средние заголовки
          headlineMedium: _globalTextStyle.copyWith(
              fontSize: 18 * fontCoefficient,
              fontWeight: FontWeight.w500, // 500
              color: Palette.text),

          // малые заголовки
          headlineSmall: _globalTextStyle.copyWith(
              fontSize: 16 * fontCoefficient,
              fontWeight: FontWeight.w500, // 500
              color: Palette.text),

          titleMedium: _globalTextStyle.copyWith(
              fontSize: 16 * fontCoefficient,
              fontWeight: FontWeight.w400, // 500
              color: Palette.text),

          // кнопки
          labelSmall: _globalTextStyle.copyWith(
              fontSize: 16 * fontCoefficient,
              fontWeight: FontWeight.w500,
              color: Palette.clean,
              decoration: TextDecoration.none),

          // основной текст
          bodyMedium: _globalTextStyle.copyWith(
              fontSize: 16 * fontCoefficient,
              fontWeight: FontWeight.w400,
              color: Palette.text),

          // подсказки
          bodySmall: _globalTextStyle.copyWith(
            fontSize: 12 * fontCoefficient,
            color: Palette.subtitles,
            fontWeight: FontWeight.w400,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Palette.text,
          unselectedLabelColor: Palette.text,
        ),
      );
}
