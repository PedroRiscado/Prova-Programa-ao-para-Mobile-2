import 'package:flutter/material.dart';
import 'package:evento/models/evento_model.dart';
import 'package:evento/screans/form_evento_screaan.dart';
import 'package:evento/screans/evento/perfil_evento.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eventos Disponiveis"),
        backgroundColor: Color.fromARGB(255, 243, 118, 35),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (context, index) {
          return _eventoCard(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => FormEventoScreen()),
          );
        },
        icon: Icon(Icons.add),
        label: Text("Cadastrar"),
        backgroundColor: Color.fromARGB(255, 243, 118, 35),
      ),
    );
  }

  Widget _eventoCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (_) => PerfilEvento(evento: eventos[index])),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: eventos[index].id,
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(eventos[index].imageUrl),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    eventos[index].nome,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 20, 0),
              child: Text(
                eventos[index].descricao,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
