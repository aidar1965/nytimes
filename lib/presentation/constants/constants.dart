import 'dart:ui';

class Constants {
  // static const double horizontalPadding = 20;
  static const double maxWidth = 460;
  static const double buttonRadius = 8;
  static const double dialogRadius = 16;
  static const double inputRadius = 8;
  static const double buttonHeight = 54;
  static const double inputFieldDefaultHeight = 54;
  static const double bottomMenuIconSize = 13.33;
  static const double appbarHeight = 54;
  static const double searchFieldHeight = 49;
  static const double buttonBorderWidth = 1;
  static const double bottomMenuHeight = 73;

  static const double maxDrawerWidth = 500.0;

  static const double newsListDivider = 16.0;
  static const double imageContainerRadius = 8.0;

  static const double snipeParametersRowHeight = 48;

  static const int timeout = 60;
  static Iterable<Locale> availableLocales = [
    const Locale('en'),
    const Locale('de')
  ];

// NYT API settings
  static Uri myBidderTermsOfServiceUrl =
      Uri.parse('https://www.myibidder.com/login/terms');

  static const String nyTimesImagePrefix = 'https://static01.nyt.com/';

  static const String nyTimesPublicKey = 'HmTPAiQIuHelvys12dVjGwmdkCk0vvRv';

  static const String hostHttp = 'https';

  static const String hostUrl = 'api.nytimes.com/';
}
