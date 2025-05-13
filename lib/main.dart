import 'package:flutter/material.dart';
import 'package:act7_flutter/pantallainicial.dart';
import 'package:act7_flutter/pantalla1.dart';
import 'package:act7_flutter/pantalla2.dart';
import 'package:act7_flutter/pantalla3.dart';
import 'package:act7_flutter/pantalla4.dart';
import 'package:act7_flutter/pantalla5.dart';
import 'package:act7_flutter/pantalla6.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
