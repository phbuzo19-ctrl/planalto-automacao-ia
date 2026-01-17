import 'package:flutter/material.dart';
import '../modules/industrial/industrial_home.dart';
import '../modules/residencial/residencial_home.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const ResidencialHome(),
    '/industrial': (context) => const IndustrialHome(),
  };
}
