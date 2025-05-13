import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown, // Fondo azul
          title: const Text(
            'circle_avatar',
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
              height: 25,
            ),
            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                radius: 55,
                backgroundImage: NetworkImage(
                    'https://wwfgifts-files.worldwildlife.org/wwfgifts/images/panda-large-photo.jpg'),
                child: Text('Hi', style: TextStyle(color: Colors.white)),
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
