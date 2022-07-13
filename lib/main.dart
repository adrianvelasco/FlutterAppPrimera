import 'package:flutter/material.dart';
import 'package:primera_app_flutter/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

//usar la clave en los constructores de widgets.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PREFERIR usar const para crear instancias de constructores constantes.
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
