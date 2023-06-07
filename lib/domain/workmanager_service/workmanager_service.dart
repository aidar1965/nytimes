part of '../../main.dart';

const myTask = "syncWithTheBackEnd";

final workManager = Workmanager();

const notificationId = 888;

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
  'NYT_API',
  'NYT_API_BG_FETCH',
);
const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@drawable/launcher_icon');

const IOSInitializationSettings initializationSettingsIOS =
    IOSInitializationSettings();
const InitializationSettings initializationSettings = InitializationSettings(
  android: initializationSettingsAndroid,
  iOS: initializationSettingsIOS,
);

final api = Api();
final localDb = LocalDb();
final favoritesRepository = FavoritesRepository(localDb: localDb);

Future<bool> workmanagerTask(String name, Map<String, dynamic>? data) async {
  final List<Favorite> favorites = await localDb.getFavorites();
  List<Section> sections = favorites.map((e) => e.section).toList();

  final page = sections.isEmpty
      ? await api.getArticles()
      : await api.getArticles(sections: sections);
  if (page.articles.isNotEmpty) {
    final date = page.articles.first.date;

    final localArticles = await localDb.getArticles();
    if (localArticles.isNotEmpty) {
      if (localArticles.first.date.isBefore(date)) {
        await flutterLocalNotificationsPlugin.show(
          notificationId,
          'App NY Times',
          page.articles.first.title,
          platformChannelSpecifics,
          payload: page.articles.first.url,
        );
        log('NYT new article ${page.articles.first.title}');
      } else {}
    }
  } else {
    log('No New Articles');
  }

  return true;
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  void onFavoritesChanged(List<Favorite> favoritesList) {
    workManager.cancelAll();
    workManager.executeTask((task, inputData) async {
      return await workmanagerTask(task, inputData);
    });
  }

  final subscription = favoritesRepository
      .subscribe((favoritesList) => onFavoritesChanged(favoritesList));

  workManager.executeTask((task, inputData) async {
    return await workmanagerTask(task, inputData);
  });
}
