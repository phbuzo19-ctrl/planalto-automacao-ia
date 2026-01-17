import 'package:flutter/material.dart';

void main() {
  runApp(const PlanaltoApp());
}

class PlanaltoApp extends StatelessWidget {
  const PlanaltoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planalto Automação IA',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Planalto Automação IA')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('🏭 Modo Industrial'),
            Text('🏠 Modo Residencial'),
            Text('🧠 IA Técnica'),
          ],
        ),
      ),
    );
  }
}
