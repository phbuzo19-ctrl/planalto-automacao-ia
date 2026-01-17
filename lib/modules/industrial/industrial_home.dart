import 'package:flutter/material.dart';

class IndustrialHome extends StatelessWidget {
  const IndustrialHome({super.key}); // 👈 ESSENCIAL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Automação Industrial'),
      ),
      body: const Center(
        child: Text(
          'Módulo Industrial',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
