import 'package:country_app/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import '../description/desc_view.dart';
import '../home/home.dart';

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
            AppStrings.noRouteFound,
          ),
        ),
        body: Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }
}
