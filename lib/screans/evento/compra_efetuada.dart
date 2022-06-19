import 'package:flutter/material.dart';
import 'package:evento/models/evento_model.dart';
import 'package:evento/screans/form_evento_screaan.dart';
import 'package:evento/screans/evento/perfil_evento.dart';

class CompraEfetuada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compra Realizada!"),
        backgroundColor: Color.fromARGB(255, 243, 118, 35),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(children: const [
        Center(
          heightFactor: 2,
          child: Text('Parabens!!!Agora é so curtir a festa.',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              )),
        ),
      ]),
    );
  }
}
