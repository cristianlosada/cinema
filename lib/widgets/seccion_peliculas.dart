import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/model/peliculas.dart';
import 'package:proyecto_cinema/views/detalles_screen.dart';
import 'package:proyecto_cinema/widgets/card_pelicula.dart';

class ListaPeliculasView extends StatelessWidget {
  const ListaPeliculasView({super.key});

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
                builder: (context) =>
                    DetallesScreen(pelicula: peliculas[index]),
              ),
            ),
          );
        },
      );
    });
  }
}
