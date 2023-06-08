import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/palette.dart';
import '../../router/app_router.dart';
import '../../theme/custom_icons.dart';

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
        //alternatively you could use a global key
        return Scaffold(
            body: child,
            bottomNavigationBar: Container(
              height: 96,
              decoration: const BoxDecoration(
                  color: Palette.background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Palette.tabBarShadow,
                      offset: Offset(0, -1),
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: BottomNavigationBar(
                        currentIndex: tabsRouter.activeIndex,
                        unselectedItemColor: Palette.tabBar,
                        unselectedIconTheme: const IconThemeData(
                            color: Palette.primary40, size: 24),
                        selectedItemColor: Palette.tabBarActive,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        selectedIconTheme: const IconThemeData(
                            color: Palette.tabBarActive, size: 24),
                        onTap: (index) {
                          // here we switch between tabs
                          tabsRouter.setActiveIndex(index);
                        },
                        items: [
                          BottomNavigationBarItem(
                            icon: const Icon(CustomIcons.home),
                            label: LocaleKeys.bottomNavigationArticles.tr(),
                          ),
                          BottomNavigationBarItem(
                            icon: const Icon(CustomIcons.sections),
                            label: LocaleKeys.bottomNavigationFavorites.tr(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        height: 5,
                        width: 134,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Color(0xffdcdcde)),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
