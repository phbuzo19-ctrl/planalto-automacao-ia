import 'package:flutter/material.dart';

class ResidencialHome extends StatelessWidget {
  const ResidencialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Automação Residencial')),
      body: const Center(
        child: Text(
          'Módulo Residencial',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
