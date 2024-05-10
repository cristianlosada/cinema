import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/constants.dart';
import 'package:proyecto_cinema/views/home_view.dart';

class TicketFinalView extends StatelessWidget {
  final String name, lastname, doc, telefono, combo, teatro, funcion;
  const TicketFinalView(
      {super.key,
      required this.name,
      required this.lastname,
      required this.doc,
      required this.telefono,
      required this.combo,
      required this.teatro,
      required this.funcion});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, left: 50, right: 50),
              child: Text(
                "Por favor saca captura del siguiente codigo",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: kDefaultPaddin, right: kDefaultPaddin),
              child: Container(
                height: 400,
                width: screenWidth * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text("Nombre: ${name} ${lastname}"),
            ),
            Container(
              child: Text("Telefono ${telefono}"),
            ),
            Container(
              child: Text("Doc ${doc}"),
            ),
            Container(
              child: Text("combo: ${combo}"),
            ),
            Container(
              child: Text("Teatro: ${teatro}"),
            ),
            Container(
              child: Text("Funcion: ${funcion}"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeView()));
                },
                child: Text("Volver al home"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
