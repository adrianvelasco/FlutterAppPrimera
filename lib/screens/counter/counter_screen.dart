import 'package:flutter/material.dart';

//Widget Independiente
class CounterScreen extends StatefulWidget {
  // Manejo del estado
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  // Retorna un Widget
  Widget build(BuildContext context) {
    // PREFERIR usar const para crear instancias de constructores constantes.
    //Variable de TextFiled
    const fontSize = TextStyle(fontSize: 20);
    return Scaffold(
      // Implementa la estructura de disposición visual de los widgets
      appBar: AppBar(
        title: const Text('Counter Screeen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero de Clicks',
              style: fontSize,
            ),
            Text(
              '$counter',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
