import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:proyecto_cinema/model/cartelera_movies_list.dart';
import 'package:proyecto_cinema/model/movie.dart';
// import 'package:proyecto_cinema/views/detalles_screen.dart';
import 'package:proyecto_cinema/widgets/responsive_text.dart';

class PeliculaCard extends StatelessWidget {
  final double height;
  final Movie pelicula;
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
                child: Image.network(
                  "https://image.tmdb.org/t/p/w500/${pelicula.posterPath}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 160,
            child: Center(
              child: ResponsiveText(
                text: pelicula.title,
                maxFontSize: 24,
                minFontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
