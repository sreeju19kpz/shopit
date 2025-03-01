import 'package:flutter/material.dart';
import 'package:shopit/common/widgets/bottom_tab/bottom_tab.dart';
import 'package:shopit/core/configs/theme/app_screens.dart';
import 'package:shopit/core/configs/theme/app_theme.dart';
import 'package:shopit/presentation/explore/screen/explore.dart';
import 'package:shopit/presentation/home/pages/home.dart';
import 'package:shopit/presentation/intro/pages/intro.dart';
import 'package:shopit/presentation/login/page/login.dart';
import 'package:shopit/presentation/splash/pages/splash.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final _rootNavigationKey = GlobalKey<NavigatorState>(debugLabel: "root");

final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigationKey,
  routes: <RouteBase>[
    GoRoute(
      path: AppScreens.splashScreen,
      builder: (BuildContext context, GoRouterState state) => SplashScreen(),
    ),
    GoRoute(
      path: AppScreens.introScreen,
      builder: (BuildContext context, GoRouterState state) => IntroScreen(),
    ),
    GoRoute(
      path: AppScreens.loginScreen,
      builder: (BuildContext context, GoRouterState state) => LoginPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              BottomTabBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppScreens.homeScreen,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppScreens.exploreScreen,
              builder: (context, state) => ExploreScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ShopIt',
      theme: AppTheme.lightTheme,
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
