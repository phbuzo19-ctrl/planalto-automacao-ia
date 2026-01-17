import 'package:flutter/material.dart';
import 'package:planalto_automacao_ia/modules/residencial/residencial_home.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const ResidencialHome(),
  };
}
