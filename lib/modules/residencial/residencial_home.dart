import 'calculadora_eletrica.dart';body: Center(
  child: ElevatedButton(
    child: const Text('Calculadora Elétrica'),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const CalculadoraEletrica(),
        ),
      );
    },
  ),
),
