import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown, // Fondo azul
          title: const Text(
            'cupertino_slider',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
          centerTitle: true, // Centrar el texto
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Text(_currentValue.toString()),
                  const SizedBox(height: 50),
                  CupertinoSlider(
                    value: _currentValue,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    onChanged: (selectedValue) {
                      setState(() {
                        _currentValue = selectedValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar!'),
              ),
            ),
          ],
        ));
  }
}
