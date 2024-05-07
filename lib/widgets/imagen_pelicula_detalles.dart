import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/model/peliculas.dart';

class imagen_detalles extends StatelessWidget {
  final Pelicula pelicula;
  const imagen_detalles({
    super.key,
    required this.pelicula,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.7,
      width: screenWidth * 1,
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: Image.asset(
            peliculas[0].imagen,
            fit: BoxFit.cover,
          )),
    );
  }
}
