import 'package:flutter/material.dart';

class FormEventoScreen extends StatefulWidget {
  const FormEventoScreen({Key? key}) : super(key: key);

  @override
  State<FormEventoScreen> createState() => _FormEventoScreenState();
}

class _FormEventoScreenState extends State<FormEventoScreen> {
  String dataEvento = '18/06/2022';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Evento"),
          backgroundColor: Color.fromARGB(255, 243, 118, 35),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Nome do Evento"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration:
                          InputDecoration(labelText: "Descricao do Evento"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Data do Evento"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Valor do Evento"),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 243, 118, 35),
                            child: Text(
                              "Cadastrar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )),
                  ]),
            ),
          ),
        ));
  }
}
