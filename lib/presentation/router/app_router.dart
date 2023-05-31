import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/article/article_screen.dart';
import '../screens/favorites/favorites_screen.dart';
import '../screens/news_list/news_list_screen.dart';
import '../screens/splash/splash_screen.dart';
part 'app_router.gr.dart';

@RoutePage(name: 'ArticleListRouter')
class ArticleListRouterPage extends AutoRouter {
  const ArticleListRouterPage({super.key});
} // empty starting page for NewsList

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: ArticleListRouter.page,
              children: [
                AutoRoute(
                  page: NewsListRoute.page,
                  path: '',
                ),
                AutoRoute(
                  page: ArticleRoute.page,
                  path: 'article',
                ),
              ],
            ),
            AutoRoute(page: FavoritesRoute.page),
          ],
        ),
      ];
}
