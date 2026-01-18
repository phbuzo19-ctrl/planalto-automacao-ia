import 'package:flutter/material.dart';
import '../modules/industrial/industrial_home.dart';
import '../modules/residencial/residencial_home.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/industrial': (context) => const IndustrialHome(),
  '/residencial': (context) => const ResidencialHome(),
};

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Planalto Automação')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/industrial'),
              child: const Text('Automação Industrial'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/residencial'),
              child: const Text('Automação Residencial'),
            ),
          ],
        ),
      ),
    );
  }
}
