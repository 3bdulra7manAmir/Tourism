// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_styles.dart';
import '../../core/widgets/circular_indicator.dart';
import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import '../../features/02_home/presentation/screens/home_view.dart';
import 'app_routes.dart';
import 'nav_bar_navigator.dart';
import 'route_observer.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [RouteTracker(),],
    initialLocation: AppRoutes.splash,
    errorBuilder: (_, _) => const Scaffold(body: CustomLoadingIndicator(),),
    routes:
    [
      /// [ OnBoarding Feature ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, _) => const Splash(),
      ),

      // StatefulShellRoute.indexedStack(
      //   builder: (_, _, navigationShell) => MainScaffold(navigationShell: navigationShell),
      //   branches:
      //   [
      //     // Branch 0 → Home (Academies)
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: AppRoutes.home,
      //           name: AppRoutes.home,
      //           builder: (_, _) => Home(),
      //         ),
      //         ],
      //     ),
      //     // Branch 1 → Services
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: AppRoutes.services,
      //           name: AppRoutes.services,
      //           builder: (_, _) => Scaffold(
      //             body: Center(child: Text('Services Screen Placeholder', style: AppStyles.semiBold(),)),
      //           ),
      //         ),
      //       ],
      //     ),
      //     // Branch 2 → Profile
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: AppRoutes.profile,
      //           name: AppRoutes.profile,
      //           builder: (_, _) => const Scaffold(
      //             body: Center(child: Text('Profile Screen Placeholder')),
      //           ),
      //         ),
      //       ],
      //     ),
      //     /// Branch 3 → Menu
      //     StatefulShellBranch(
      //       routes: <RouteBase>
      //       [
      //         GoRoute(
      //           path: AppRoutes.menu,
      //           name: AppRoutes.menu,
      //           builder: (context, state) => const Scaffold(
      //             body: Center(child: Text('Menu Screen Placeholder')),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ]
      // ),

    ]
  );
}
