import 'package:flutter/material.dart';

import '../modules/residencial/residencial_home.dart';
import '../modules/industrial/industrial_home.dart';
import '../modules/ia/ia_chat_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const ResidencialHome(),
    '/industrial': (context) => const IndustrialHome(),
    '/ia': (context) => const IaChatPage(),
  };
}
