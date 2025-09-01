import 'package:flutter/material.dart';


class RouteTracker extends RouteObserver<PageRoute<dynamic>>
{
  static String? currentRoute;
  static String? previousRouteName;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    if (route.settings.name != null && route.settings.name!.isNotEmpty)
    {
      previousRouteName = currentRoute;
      currentRoute = route.settings.name;
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    if (previousRoute?.settings.name != null && previousRoute!.settings.name!.isNotEmpty) {
      currentRoute = previousRoute.settings.name;
    }
  }
  
}
