import 'package:flutter/material.dart';
import 'package:proyecto_cinema/model/peliculas.dart';
import 'package:proyecto_cinema/views/home_view.dart';
import 'package:proyecto_cinema/views/reservas_screen.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/imagen_pelicula_detalles.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class DetallesScreen extends StatelessWidget {
  final Pelicula pelicula;
  const DetallesScreen({
    super.key,
    required this.pelicula,
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
      body: Container(
        height: screenHeight * 4,
        width: screenWidth * 4,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              imagen_detalles(
                pelicula: peliculas[0],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: screenWidth * 1,
                      height: screenHeight * 0.1,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(pelicula.nombre),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: screenWidth * 1,
                      height: screenHeight * 0.5,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 225, 225),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(pelicula.descripcion),
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
                              builder: (BuildContext context) =>
                                  ReservasPage()));
                    },
                    child: Text('Reservar')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
