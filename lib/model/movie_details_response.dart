import 'dart:convert';

MovieDetailsResult movieDetailsResultFromJson(String str) =>
    MovieDetailsResult.fromJson(json.decode(str));

String movieDetailsResultToJson(MovieDetailsResult data) =>
    json.encode(data.toJson());

class MovieDetailsResult {
  String message;
  MovieDetails data;

  MovieDetailsResult({
    required this.message,
    required this.data,
  });

  factory MovieDetailsResult.fromJson(Map<String, dynamic> json) =>
      MovieDetailsResult(
        message: json["message"],
        data: MovieDetails.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class MovieDetails {
  int id;
  String overview;
  String posterPath;
  String title;

  MovieDetails({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.title,
  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) => MovieDetails(
        id: json["id"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "overview": overview,
        "poster_path": posterPath,
        "title": title,
      };
}
