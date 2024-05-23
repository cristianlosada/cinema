import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/model/peliculas.dart';
import 'package:proyecto_cinema/views/detalles_screen.dart';

class PeliculaCard extends StatelessWidget {
  final double height;
  final Pelicula pelicula;
  final Function() press;
  const PeliculaCard({
    super.key,
    required this.pelicula,
    required this.press,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: height,
            width: 160,
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  pelicula.imagen,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 160,
            child: Center(
              child: Text(
                pelicula.nombre,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
