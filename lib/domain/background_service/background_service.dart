// part of '../../main.dart';

// const notificationChannelId = 'my_foreground';

// const notificationId = 888;

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   notificationChannelId, // id
//   'MY FOREGROUND SERVICE', // title
//   description:
//       'This channel is used for important notifications.', // description
//   importance: Importance.low, // importance must be at low or higher level
// );

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// const AndroidInitializationSettings initializationSettingsAndroid =
//     AndroidInitializationSettings('@drawable/launcher_icon');

// const IOSInitializationSettings initializationSettingsIOS =
//     IOSInitializationSettings();
// const InitializationSettings initializationSettings = InitializationSettings(
//   android: initializationSettingsAndroid,
//   iOS: initializationSettingsIOS,
// );

// const NotificationDetails platformChannelSpecifics = NotificationDetails(
//     android: AndroidNotificationDetails(
//         notificationChannelId, 'your channel name',
//         channelDescription: 'your channel description',
//         importance: Importance.max,
//         priority: Priority.high,
//         ticker: 'ticker'));

// @pragma('vm:entry-point')
// void onStart(ServiceInstance service) async {
//   DartPluginRegistrant.ensureInitialized();

//   if (service is AndroidServiceInstance) {
//     service.setAsBackgroundService();
//     service.setAsForegroundService();
//   }

//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);

//   log('Now initializing');
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//       onSelectNotification: onSelectNotification);

//   Timer.periodic(
//     const Duration(minutes: 1),
//     (timer) async {
//       log(DateTime.now().toString());

//       await flutterLocalNotificationsPlugin.show(
//         notificationId,
//         'App NY Times',
//         'New Article',
//         platformChannelSpecifics,
//         payload:
//             'https://www.nytimes.com/2023/05/24/magazine/estranged-parent-funeral-ethics.html',
//       );
//       // final api = Api();
//       // final localDb = LocalDb();
//       // final page = await api.getArticles();
//       // if (page.articles.isNotEmpty) {
//       //   final date = page.articles.first.date;

//       //   final localArticles = await localDb.getArticles();
//       //   if (localArticles.isNotEmpty) {
//       //     //log('${localArticles.first.date} ${localArticles.first.title}');

//       //     if (localArticles.first.date.isBefore(date)) {
//       //       if (service is AndroidServiceInstance) {
//       //         if (await service.isForegroundService()) {
//       //           // service.setForegroundNotificationInfo(
//       //           //     title: 'App NY Times', content: page.articles.first.title);
//       //           await flutterLocalNotificationsPlugin.show(
//       //             notificationId,
//       //             'App NY Times',
//       //             page.articles.first.title,
//       //             platformChannelSpecifics,
//       //             payload: page.articles.first.url,
//       //           );
//       //           log('NYT new article ${page.articles.first.title}');
//       //         } else {}
//       //       }
//       //     } else {
//       //       log('No New Articles');
//       //     }
//       //   }
//       // }
//     },
//   );
// }

// void onSelectNotification(String? payload) async {
//   debugPrint('notification!');

//   debugPrint('notification payload: $payload');
//   await AppRouter().push(ArticleRoute(url: payload!));

//   // _appBackgroundSubscriptionController.add(true);
// }

// @pragma('vm:entry-point')
// Future<bool> onIosBackground(ServiceInstance service) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   DartPluginRegistrant.ensureInitialized();
//   return true;
// }

// Future<void> initialize() async {
//   final service = FlutterBackgroundService();
//   await service.configure(
//     iosConfiguration: IosConfiguration(
//       onForeground: onStart,
//       onBackground: onIosBackground,
//       autoStart: true,
//     ),
//     androidConfiguration: AndroidConfiguration(
//         onStart: onStart,
//         isForegroundMode: true,
//         initialNotificationTitle: 'NY Times BACKGROUND SERVICE',
//         initialNotificationContent: 'Initializing',
//         notificationChannelId: notificationChannelId,
//         foregroundServiceNotificationId: notificationId),
//   );
// }
