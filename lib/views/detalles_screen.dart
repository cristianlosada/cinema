import 'package:flutter/material.dart';
import 'package:proyecto_cinema/views/home_view.dart';
import 'package:proyecto_cinema/views/reservas_screen.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/imagen_pelicula_detalles.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class DetallesScreen extends StatelessWidget {
  const DetallesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text('CinemaPark'),
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeView()));
          },
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            imagen_detalles(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width: screenHeight * 0.9,
                    height: screenHeight * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("NOMBRE DE LA PELICULA"),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width: screenHeight * 0.9,
                    height: screenHeight * 0.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("descripcion de la pelicula de sonic"),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(right: 20, left: 20),
              child: FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ReservasPage()));
                  },
                  child: Text('Reservar')),
            )
          ],
        ),
      ),
    );
  }
}
