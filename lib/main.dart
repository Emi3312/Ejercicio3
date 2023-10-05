import 'package:flutter/material.dart'; // Importa la biblioteca Flutter para crear la interfaz de usuario.

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState(); // Crea el estado mutable de la calculadora.
}

class _CalculadoraState extends State<Calculadora> {
  
  String _operacion = ""; // Almacena la operación actual.
  double _primerNumero = 0; // Almacena el primer número ingresado.
  double _segundoNumero = 0; // Almacena el segundo número ingresado.
  double _resultado = 0; // Almacena el resultado de la operación.

  // Funciones para realizar operaciones matemáticas.
  double _sumar() {
    return _primerNumero + _segundoNumero; // Realiza la suma de los números ingresados.
  }

  double _restar() {
    return _primerNumero - _segundoNumero; // Realiza la resta de los números ingresados.
  }

  double _multiplicar() {
    return _primerNumero * _segundoNumero; // Realiza la multiplicación de los números ingresados.
  }

  double _dividir() {
    return _primerNumero / _segundoNumero; // Realiza la división de los números ingresados.
  }

  double _elevarAlCuadrado() {
    return _primerNumero * _primerNumero; // Calcula el cuadrado del primer número ingresado.
  }

  void _onSumar() {
    _resultado = _sumar(); // Llama a la función de suma y actualiza el resultado.
    _operacion = "+"; // Establece la operación actual como suma.
    setState(() {}); // Notifica a Flutter que se debe actualizar la interfaz.
  }

  void _onRestar() {
    _resultado = _restar(); // Llama a la función de resta y actualiza el resultado.
    _operacion = "-"; // Establece la operación actual como resta.
    setState(() {}); // Notifica a Flutter que se debe actualizar la interfaz.
  }

  void _onMultiplicar() {
    _resultado = _multiplicar(); // Llama a la función de multiplicación y actualiza el resultado.
    _operacion = "*"; // Establece la operación actual como multiplicación.
    setState(() {}); // Notifica a Flutter que se debe actualizar la interfaz.
  }

  void _onDividir() {
    _resultado = _dividir(); // Llama a la función de división y actualiza el resultado.
    _operacion = "/"; // Establece la operación actual como división.
    setState(() {}); // Notifica a Flutter que se debe actualizar la interfaz.
  }

  void _onElevarAlCuadrado() {
    _resultado = _elevarAlCuadrado(); // Llama a la función de elevar al cuadrado y actualiza el resultado.
    _operacion = "x²"; // Establece la operación actual como elevar al cuadrado.
    setState(() {}); // Notifica a Flutter que se debe actualizar la interfaz.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')), // Barra de la aplicación.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Operación: $_operacion', // Muestra la operación actual.
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Primer número', // Etiqueta del primer número.
              ),
              onChanged: (value) {
                _primerNumero = double.parse(value); // Convierte y almacena el primer número ingresado.
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Segundo número', // Etiqueta del segundo número.
              ),
              onChanged: (value) {
                _segundoNumero = double.parse(value); // Convierte y almacena el segundo número ingresado.
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _onSumar, // Ejecuta la función de suma al presionar el botón.
                  tooltip: 'Sumar',
                  child: Icon(Icons.add), // Icono de suma.
                ),
                SizedBox(width: 10), // Espacio entre botones.
                FloatingActionButton(
                  onPressed: _onRestar, // Ejecuta la función de resta al presionar el botón.
                  tooltip: 'Restar',
                  child: Icon(Icons.remove), // Icono de resta.
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _onMultiplicar, // Ejecuta la función de multiplicación al presionar el botón.
                  tooltip: 'Multiplicar',
                  child: Text("X"), // Texto "X" para representar la multiplicación.
                ),
                SizedBox(width: 10), // Espacio entre botones.
                FloatingActionButton(
                  onPressed: _onDividir, // Ejecuta la función de división al presionar el botón.
                  tooltip: 'Dividir',
                  child: Text("/"), // Texto "/" para representar la división.
                ),
                SizedBox(width: 10), // Espacio entre botones.
                FloatingActionButton(
                  onPressed: _onElevarAlCuadrado, // Ejecuta la función de elevar al cuadrado al presionar el botón.
                  tooltip: 'Elevar al Cuadrado',
                  child: Text("x²"), // Texto "x²" para representar la operación de elevar al cuadrado.
                ),
              ],
            ),
            Text(
              'Resultado: $_resultado', // Muestra el resultado de la operación.
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Calculadora(), // Inicia la aplicación Flutter con la calculadora como pantalla principal.
  ));
}
