import 'dart:convert';
import 'package:proyecto_cinema/model/movie.dart';

MoviesListResponse upcomingMoviesResultFromJson(String str) =>
    MoviesListResponse.fromJson(json.decode(str));

String upcomingMoviesResultToJson(MoviesListResponse data) =>
    json.encode(data.toJson());

class MoviesListResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  MoviesListResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MoviesListResponse.fromJson(Map<String, dynamic> json) =>
      MoviesListResponse(
        page: json["page"],
        results:
            List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
