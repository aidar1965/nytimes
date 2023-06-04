import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/palette.dart';
import '../../router/app_router.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: [NewsListRoute(), const FavoritesRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              unselectedItemColor: Palette.primary40,
              unselectedIconTheme:
                  const IconThemeData(color: Palette.primary40),
              selectedItemColor: Palette.primary60,
              showSelectedLabels: false,
              selectedIconTheme:
                  const IconThemeData(color: Palette.primary60, size: 30),
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.view_list_outlined),
                  label: LocaleKeys.bottomNavigationArticles.tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite_border_outlined),
                  label: LocaleKeys.bottomNavigationFavorites.tr(),
                ),
              ],
            ));
      },
    );
  }
}
