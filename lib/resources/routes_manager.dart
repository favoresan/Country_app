import 'package:country_app/screens/desc_view.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

class Routes {
  static const String mainRoute = '/main';
  static const String descRoute = '/description';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.descRoute:
        return MaterialPageRoute(builder: (_) => DescView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            'No route found',
          ),
        ),
        body: Center(
          child: Text(
            'No route found',
          ),
        ),
      ),
    );
  }
}
