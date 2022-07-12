import 'package:flutter/material.dart';

//Widget Independiente
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // Retorna un Widget
  Widget build(BuildContext context) {
    // PREFERIR usar const para crear instancias de constructores constantes.
    return Scaffold(
      // Implementa la estructura de disposición visual de los widgets
      // backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('Mi Primer App'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: const [
            Text('Numero de Clicks'),
            Text('Numero -> '),
          ],
        ),
      ),
    );
  }
}
