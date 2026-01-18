import 'package:flutter/material.dart';

class IndustrialHome extends StatelessWidget {
  const IndustrialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Industrial')),
      body: const Center(
        child: Text('Módulo Industrial', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
