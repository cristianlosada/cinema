import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_cinema/widgets/card_pelicula.dart';

class ListaPeliculasView extends StatelessWidget {
  const ListaPeliculasView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PeliculaCard(),
                PeliculaCard(),
                PeliculaCard(),
                PeliculaCard(),
              ],
            ))
      ],
    );
  }
}
