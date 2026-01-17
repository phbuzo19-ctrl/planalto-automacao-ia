import 'package:flutter/material.dart';
import 'package:planalto_automacao_ia/modules/industrial/industrial_home.dart';
import 'package:planalto_automacao_ia/modules/residencial/residencial_home.dart';
import 'package:planalto_automacao_ia/modules/orcamentos/orcamento_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const IndustrialHome(),
    '/residencial': (context) => const ResidencialHome(),
    '/orcamento': (context) => const OrcamentoPage(),
  };
}
