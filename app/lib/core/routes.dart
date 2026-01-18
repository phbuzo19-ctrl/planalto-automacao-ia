import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
};

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Planalto Automação',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
