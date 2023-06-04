import 'package:flutter/material.dart' hide ModalBottomSheetRoute;

import '../../data/api/http_client/request_exception.dart';
import '../../data/api/models/section.dart';
import 'widgets/common_dialog.dart';

class CommonFunctions {
  static Future<void> showMessage(BuildContext context, String msg) =>
      showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (_) => CommonDialog.message(msg),
      );

  static String? get400ErrorMessage({
    required String errorKey,
    required RequestException e,
    bool withDots = false,
  }) {
    if (e.response!.keys.contains(errorKey)) {
      final keyValue = e.response![errorKey];
      if (keyValue is Iterable) {
        final errors = keyValue.map((dynamic item) => item as String).toList();
        if (withDots == false) {
          return errors.join(' ');
        } else {
          return errors.join('. ');
        }
      } else {
        return '$keyValue';
      }
    } else {
      return null;
    }
  }

  static String fromSection(Section section) {
    switch (section) {
      case Section.Arts:
        return 'Arts';
      case Section.Automobiles:
        return 'Automobiles';
      case Section.Autos:
        return 'Autos';
      case Section.Blogs:
        return 'Blogs';
      case Section.Books:
        return 'Books';
      case Section.Booming:
        return 'Booming';
      case Section.Business:
        return 'Business';
      case Section.BusinessDay:
        return 'Business Day';
      case Section.Corrections:
        return 'Corrections';
      case Section.CrosswordsAndGames:
        return 'Crosswords & Games';
      case Section.CrosswordsOrGames:
        return 'Crosswords/Games';
      case Section.DiningAndWine:
        return 'Dining & Wine';
      case Section.EditorsNotes:
        return 'Editor\'s Notes';
      case Section.Education:
        return 'Education';
      case Section.FashionAndStyle:
        return 'Fashion & Style';
      case Section.Food:
        return 'Food';
      case Section.FrontPage:
        return 'Front Page';
      case Section.Giving:
        return 'Giving';
      case Section.GlobalHome:
        return 'Global Home';
      case Section.GreatHomesAndDestinations:
        return 'Great Homes and Destinations';
      case Section.Health:
        return 'Health';
      case Section.HomeAndGarden:
        return 'Home and Garden';
      case Section.InternationalHome:
        return 'International Home';
      case Section.JobMarket:
        return 'Job Market';
      case Section.Learning:
        return 'Learning';
      case Section.Magazine:
        return 'Magazine';
      case Section.Movies:
        return 'Movies';
      case Section.Multimedia:
        return 'Multimedia';
      case Section.MultimediaOrPhotos:
        return 'Multimedia/Photos';
      case Section.NYOrRegion:
        return 'N.Y./Region';
      case Section.NYRegion:
        return 'N.Y. / Region';
      case Section.NYTNow:
        return 'NYT Now';
      case Section.National:
        return 'National';
      case Section.NewYork:
        return 'NewYork';
      case Section.NewYorkAndRegion:
        return 'NewYork and Region';
      case Section.Obituaries:
        return 'Obituaries';
      case Section.Olympics:
        return 'Olympics';
      case Section.Open:
        return 'Open';
      case Section.Opinion:
        return 'Opinion';
      case Section.PaidDeathNotices:
        return 'Paid Death Notices';
      case Section.PublicEditor:
        return 'Public Editor';
      case Section.RealEstate:
        return 'Real Estate';
      case Section.Science:
        return 'Science';
      case Section.Sports:
        return 'Sports';
      case Section.Style:
        return 'Style';
      case Section.SundayMagazine:
        return 'Sunday Magazine';
      case Section.SundayReview:
        return 'Sunday Review';
      case Section.TMagazine:
        return 'T Magazine';
      case Section.TStyle:
        return 'T:Style';
      case Section.Technology:
        return 'Technology';
      case Section.ThePublicEditor:
        return 'The Public Editor';
      case Section.TheUpshot:
        return 'The Upshot';
      case Section.Theater:
        return 'Theater';
      case Section.TimesTopics:
        return 'Times Topics';
      case Section.TimesMachine:
        return 'Times Machine';
      case Section.TodaysHeadlines:
        return 'Today\'s Headlines';
      case Section.Topics:
        return 'Topics';
      case Section.Travel:
        return 'Travel';
      case Section.US:
        return 'U.S.';
      case Section.Universal:
        return 'Universal';
      case Section.UrbanEye:
        return 'urban Eye';
      case Section.Washington:
        return 'Washington';
      case Section.WeekInReview:
        return 'WeekInReview';
      case Section.World:
        return 'World';
      case Section.YourMoney:
        return 'Your Money';
    }
  }
}
