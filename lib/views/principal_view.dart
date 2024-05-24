import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:proyecto_cinema/model/movie.dart';

import 'package:proyecto_cinema/model/movies_list_response.dart';
import 'package:proyecto_cinema/model/cartelera_movies_list.dart';

import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({
    super.key,
  });

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const PrincipalBanner(),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Cartelera',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          ListaPeliculasCartelera(
            screenWidth: screenWidth,
            heightScreen: screenHeight,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Proximos Estrenos',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          ListaProximasPeliculas(
            screenWidth: screenWidth,
            heightScreen: screenHeight,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Promociones',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          ListaPromocionPeliculas(
            heightScreen: screenHeight,
            screenWidth: screenWidth,
          )
        ],
      ),
    );
  }
}

class ListaPeliculasCartelera extends StatefulWidget {
  final double screenWidth;
  final double heightScreen;
  const ListaPeliculasCartelera(
      {super.key, required this.heightScreen, required this.screenWidth});

  @override
  State<ListaPeliculasCartelera> createState() =>
      _ListaPeliculasCarteleraState();
}

class _ListaPeliculasCarteleraState extends State<ListaPeliculasCartelera> {
  Future<List<Movie>> fetchUpcomingMoviesTwo() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/listar-peliculas'));

    if (response.statusCode == 200) {
      final CarteleraMoviesResult results =
          CarteleraMoviesResult.fromJson(jsonDecode(response.body));

      final data = results.data.results;
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchUpcomingMoviesTwo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width:
                    isDesktop ? widget.screenWidth * 0.9 : constraints.maxWidth,
                height: widget.heightScreen * 0.4,
                child: ListaPeliculasView(
                  peliculas: snapshot.data as List<Movie>,
                ),
              );
            },
          );
        }
      },
    );
  }
}

class ListaProximasPeliculas extends StatefulWidget {
  final double screenWidth;
  final double heightScreen;
  const ListaProximasPeliculas(
      {super.key, required this.heightScreen, required this.screenWidth});

  @override
  State<ListaProximasPeliculas> createState() => _ListaProximasPeliculasState();
}

class _ListaProximasPeliculasState extends State<ListaProximasPeliculas> {
  Future<List<Movie>> fetchUpcomingMovies() async {
    final response = await http.get(
        Uri.parse('https://api.themoviedb.org/3/movie/upcoming'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NTVkYWFkMjRmYWJmYjMxY2EwNzcxZTQwODZiYWFmNyIsInN1YiI6IjY1ZTY5NmMxY2VkZTY5MDE4NWJkZDk3ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jBGd5R4hMCFJ2XdLEFXIOF1nGvcZLoLIanAthIvhSXM',
        });

    if (response.statusCode == 200) {
      final MoviesListResponse results =
          MoviesListResponse.fromJson(jsonDecode(response.body));

      final data = results.results;
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchUpcomingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width:
                    isDesktop ? widget.screenWidth * 0.9 : constraints.maxWidth,
                height: widget.heightScreen * 0.4,
                child: ListaPeliculasView(
                  peliculas: snapshot.data as List<Movie>,
                ),
              );
            },
          );
        }
      },
    );
  }
}

class ListaPromocionPeliculas extends StatefulWidget {
  final double screenWidth;
  final double heightScreen;
  const ListaPromocionPeliculas(
      {super.key, required this.heightScreen, required this.screenWidth});

  @override
  State<ListaPromocionPeliculas> createState() =>
      _ListaPromocionPeliculasState();
}

class _ListaPromocionPeliculasState extends State<ListaPromocionPeliculas> {
  Future<List<Movie>> fetchPromoMovies() async {
    final response = await http
        .get(Uri.parse('https://api.themoviedb.org/3/movie/popular'), headers: {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NTVkYWFkMjRmYWJmYjMxY2EwNzcxZTQwODZiYWFmNyIsInN1YiI6IjY1ZTY5NmMxY2VkZTY5MDE4NWJkZDk3ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jBGd5R4hMCFJ2XdLEFXIOF1nGvcZLoLIanAthIvhSXM',
    });

    if (response.statusCode == 200) {
      final MoviesListResponse results =
          MoviesListResponse.fromJson(jsonDecode(response.body));

      final data = results.results;
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPromoMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width:
                    isDesktop ? widget.screenWidth * 0.9 : constraints.maxWidth,
                height: widget.heightScreen * 0.4,
                child: ListaPeliculasView(
                  peliculas: snapshot.data as List<Movie>,
                ),
              );
            },
          );
        }
      },
    );
  }
}
