// ignore_for_file: deprecated_member_use

import 'package:evento/screans/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

var usuario;
var senha;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    onChanged: (user) {
                      usuario = user;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    )),
                Divider(),
                TextField(
                    onChanged: (password) {
                      senha = password;
                    },
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    )),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if (usuario == 'admin' && senha == 'Password')
                        {
                          print("Correto"),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()))
                        }
                      else
                        {}
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color: Color.fromARGB(255, 243, 118, 35),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
