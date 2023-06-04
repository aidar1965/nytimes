import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:nytimes/domain/models/favorite.dart';
import 'package:workmanager/workmanager.dart';
import 'data/api/api.dart';
import 'data/api/models/section.dart';
import 'data/local_db/localDb.dart';

import 'domain/repositories/favorites_repository.dart';
import 'presentation/router/app_router.dart';
import 'presentation/theme/themes.dart';

import 'domain/environment/di.dart';
import 'domain/environment/environment.dart';

part 'domain/workmanager/workmanager.dart';

/// part 'domain/background_service/background_service.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final environment = await Environment.buildEnvironment();
  await EasyLocalization.ensureInitialized();
  runApp(
    Di(
      environment: environment,
      child: EasyLocalization(
          supportedLocales: const [Locale('en', 'US')],
          path: 'assets/languages',
          fallbackLocale: const Locale('en', 'US'),
          child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();

  void onSelectNotification(String? payload) {
    if (payload != null) {
      appRouter.push(ArticleRoute(url: payload));
    }
  }

  @override
  Widget build(BuildContext context) {
    ///  WidgetsFlutterBinding.ensureInitialized();
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: onSelectNotification,
    );
    workManager.initialize(callbackDispatcher, isInDebugMode: true);
    workManager.registerPeriodicTask(
      "background_service",
      myTask,
      initialDelay: const Duration(seconds: 30),
      frequency: const Duration(minutes: 15),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: EasyLocalization.of(context)!.supportedLocales,
      locale: EasyLocalization.of(context)!.locale,
      title: 'NY Times API',
      theme: AppTheme.getTheme(),
    );
  }
}
