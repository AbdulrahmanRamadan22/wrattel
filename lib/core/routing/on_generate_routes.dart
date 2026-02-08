import 'package:flutter/material.dart';
import 'package:wrattel/core/routing/routes_name.dart';


Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // case RoutesName.layoutScreen:
    //   return MaterialPageRoute(builder: (_) => LayoutScreen());
    // case RoutesName.homeScreen:
    //   return MaterialPageRoute(builder: (_) => HomeScreen());
    default:
      return null;
  }
}