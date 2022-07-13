import 'package:flutter/material.dart';

//Widget Independiente
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // Retorna un Widget
  Widget build(BuildContext context) {
    // PREFERIR usar const para crear instancias de constructores constantes.
    //Variable de TextFiled
    const fontSize = TextStyle(fontSize: 20);

    return Scaffold(
      // Implementa la estructura de disposición visual de los widgets
      // backgroundColor: Colors.indigo,
      // 'crossAxisAlignment != CrossAxisAlignment.baseline || textBaseline != null': textBaseline is required if you specify the crossAxisAlignment with CrossAxisAlignment.baseline)
      appBar: AppBar(
        title: const Text('Mi Primera App'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Numero de Clicks',
              style: fontSize,
            ),
            Text(
              'Numero -> ',
              style: fontSize,
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Ubicación de boton
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
