import 'package:flutter/material.dart';

class CalculadoraEletrica extends StatefulWidget {
  const CalculadoraEletrica({super.key});

  @override
  State<CalculadoraEletrica> createState() => _CalculadoraEletricaState();
}

class _CalculadoraEletricaState extends State<CalculadoraEletrica> {
  final TextEditingController _potenciaCtrl = TextEditingController();
  final TextEditingController _tensaoCtrl = TextEditingController();
  String _resultado = '';

  void _calcular() {
    final double potencia = double.tryParse(_potenciaCtrl.text) ?? 0;
    final double tensao = double.tryParse(_tensaoCtrl.text) ?? 0;

    if (potencia <= 0 || tensao <= 0) {
      setState(() {
        _resultado = 'Informe potência e tensão válidas.';
      });
      return;
    }

    final double corrente = potencia / tensao;

    int disjuntor;
    if (corrente <= 10) {
      disjuntor = 10;
    } else if (corrente <= 16) {
      disjuntor = 16;
    } else {
      disjuntor = 20;
    }

    setState(() {
      _resultado =
          'Corrente estimada: ${corrente.toStringAsFixed(2)} A\n'
          'Disjuntor sugerido: $disjuntor A';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora Elétrica')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _potenciaCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Potência (W)'),
            ),
            TextField(
              controller: _tensaoCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Tensão (V)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcular,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
