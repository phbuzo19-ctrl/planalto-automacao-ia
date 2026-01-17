import 'package:flutter/material.dart';
import 'package:planalto_automacao_ia/core/routes.dart';

void main() {
  runApp(const PlanaltoAutomacaoIA());
}

class PlanaltoAutomacaoIA extends StatelessWidget {
  const PlanaltoAutomacaoIA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planalto Automação IA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: AppRoutes.routes,
      initialRoute: '/',
    );
  }
}
