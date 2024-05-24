import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:proyecto_cinema/model/movie_details_response.dart';

import 'package:proyecto_cinema/views/home_view.dart';
import 'package:proyecto_cinema/views/reservas_screen.dart';

class DetallesScreen extends StatelessWidget {
  final int id;

  const DetallesScreen({
    super.key,
    required this.id,
  });

  Future<MovieDetails> fetchMovieDetails() async {
    final response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/listar-pelicula/$id'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NTVkYWFkMjRmYWJmYjMxY2EwNzcxZTQwODZiYWFmNyIsInN1YiI6IjY1ZTY5NmMxY2VkZTY5MDE4NWJkZDk3ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jBGd5R4hMCFJ2XdLEFXIOF1nGvcZLoLIanAthIvhSXM',
        });

    if (response.statusCode == 200) {
      final MovieDetailsResult results =
          MovieDetailsResult.fromJson(jsonDecode(response.body));

      final data = results.data;
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

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
                builder: (BuildContext context) => HomeView(),
              ),
            );
          },
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: FutureBuilder(
        future: fetchMovieDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data found'));
          } else {
            final MovieDetails pelicula = snapshot.data as MovieDetails;

            return SizedBox(
              height: screenHeight * 4,
              width: screenWidth * 4,
              child: SafeArea(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: screenHeight * 0.6,
                      child: Image.network(
                        "https://image.tmdb.org/t/p/original/${pelicula.posterPath}",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: screenWidth * 1,
                            height: screenHeight * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(pelicula.title),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(16),
                            alignment: Alignment.topLeft,
                            width: screenWidth * 1,
                            height: screenHeight * 0.3,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 225, 225, 225),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(pelicula.overview),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ReservasPage(),
                            ),
                          );
                        },
                        child: const Text('Reservar'),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
