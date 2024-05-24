import 'package:flutter/material.dart';
import 'package:proyecto_cinema/model/movie.dart';

import 'package:proyecto_cinema/views/detalles_screen.dart';
import 'package:proyecto_cinema/widgets/card_pelicula.dart';

class ListaPeliculasView extends StatelessWidget {
  const ListaPeliculasView({super.key, required this.peliculas});
  final List<Movie> peliculas;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double listViewHeight = constraints.maxHeight;

      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: peliculas.length,
        itemBuilder: (context, index) {
          return PeliculaCard(
            height: listViewHeight * 0.8,
            pelicula: peliculas[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetallesScreen(id: peliculas[index].id),
              ),
            ),
          );
        },
      );
    });
  }
}
