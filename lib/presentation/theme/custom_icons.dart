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

  static const IconData searchNotFound =
      IconData(0xe908, fontFamily: _fontFamily);
  static const IconData feedback = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData settings = IconData(0xe90e, fontFamily: _fontFamily);
  static const IconData subscription =
      IconData(0xe915, fontFamily: _fontFamily);
  static const IconData wallet = IconData(0xe917, fontFamily: _fontFamily);
  static const IconData ebayAccount = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData faceId = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData heartFilled = IconData(0xe90c, fontFamily: _fontFamily);
  static const IconData arrowDown = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData arrowLeft = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData arrowRight = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData arrowUp = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData close = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData edit = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData faq = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData filter = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData heart = IconData(0xe90d, fontFamily: _fontFamily);
  static const IconData menuAuctions =
      IconData(0xe90f, fontFamily: _fontFamily);
  static const IconData menuHelp = IconData(0xe910, fontFamily: _fontFamily);
  static const IconData menuProfile = IconData(0xe911, fontFamily: _fontFamily);
  static const IconData menuSaved = IconData(0xe912, fontFamily: _fontFamily);
  static const IconData menuSearch = IconData(0xe913, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe914, fontFamily: _fontFamily);
  static const IconData sort = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData success = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData category = IconData(0xe919, fontFamily: _fontFamily);
  static const IconData ok = IconData(0xe91a, fontFamily: _fontFamily);

  static Map<String, Icon> iconsList = {
    'searchNotFound': const Icon(
      searchNotFound,
      color: Colors.black,
      size: 24,
    ),
    'faceId': const Icon(
      faceId,
      color: Colors.black,
      size: 24,
    ),
    'heartFilled': const Icon(
      heartFilled,
      color: Colors.black,
      size: 24,
    ),
    'arrowDown': const Icon(
      arrowDown,
      color: Colors.black,
      size: 24,
    ),
    'arrowLeft': const Icon(
      arrowLeft,
      color: Colors.black,
      size: 24,
    ),
    'arrowRight': const Icon(
      arrowRight,
      color: Colors.black,
      size: 24,
    ),
    'arrowUp': const Icon(
      arrowUp,
      color: Colors.black,
      size: 24,
    ),
    'ebayAccount': const Icon(
      ebayAccount,
      color: Colors.black,
      size: 24,
    ),
    'edit': const Icon(
      edit,
      color: Colors.black,
      size: 24,
    ),
    'faq': const Icon(
      faq,
      color: Colors.black,
      size: 24,
    ),
    'feedback': const Icon(
      feedback,
      color: Colors.black,
      size: 24,
    ),
    'filter': const Icon(
      filter,
      color: Colors.black,
      size: 24,
    ),
    'heart': const Icon(
      heart,
      color: Colors.black,
      size: 24,
    ),
    'menuAuctions': const Icon(
      menuAuctions,
      color: Colors.black,
      size: 24,
    ),
    'menuHelp': const Icon(
      menuHelp,
      color: Colors.black,
      size: 24,
    ),
    'menuProfile': const Icon(
      menuProfile,
      color: Colors.black,
      size: 24,
    ),
    'menuSaved': const Icon(
      menuSaved,
      color: Colors.black,
      size: 24,
    ),
    'menuSearch': const Icon(
      menuSearch,
      color: Colors.black,
      size: 24,
    ),
    'search': const Icon(
      search,
      color: Colors.black,
      size: 24,
    ),
    'settings': const Icon(
      settings,
      color: Colors.black,
    ),
    'sort': const Icon(
      sort,
      color: Colors.black,
      size: 24,
    ),
    'subscription': const Icon(
      subscription,
      color: Colors.black,
      size: 24,
    ),
    'success': const Icon(
      success,
      color: Colors.black,
      size: 24,
    ),
    'wallet': const Icon(
      wallet,
      color: Colors.black,
      size: 24,
    )
  };
}
