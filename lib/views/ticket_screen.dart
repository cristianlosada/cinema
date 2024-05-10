import 'package:flutter/material.dart';
import 'package:proyecto_cinema/constants.dart';

class TicketFinalView extends StatelessWidget {
  final String name, lastname, doc, telefono;
  const TicketFinalView(
      {super.key,
      required this.name,
      required this.lastname,
      required this.doc,
      required this.telefono});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 90, left: kDefaultPaddin, right: kDefaultPaddin),
              child: Container(
                color: Colors.amber,
                height: 400,
                width: screenWidth * 1,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text("Nombre: ${name} ${lastname}"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("Telefono ${telefono}"),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text("Doc ${doc}"),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text("Nombre Pelicula"),
            ),
          ],
        ),
      ),
    );
  }
}
