import 'package:flutter/material.dart';
import 'core/routes.dart';

void main() {
  runApp(const PlanaltoApp());
}

class PlanaltoApp extends StatelessWidget {
  const PlanaltoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planalto Automação',
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
