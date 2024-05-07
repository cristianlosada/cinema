import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/model/peliculas.dart';
import 'package:proyecto_cinema/views/detalles_screen.dart';

class PeliculaCard extends StatelessWidget {
  final Pelicula pelicula;
  const PeliculaCard({
    super.key,
    required this.pelicula,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(1),
          margin: EdgeInsets.all(10),
          height: 250,
          width: 160,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DetallesScreen()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                pelicula.imagen,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          pelicula.nombre,
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
