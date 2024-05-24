class Movie {
  int id;
  String posterPath;
  String title;

  Movie({
    required this.id,
    required this.posterPath,
    required this.title,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        posterPath: json["poster_path"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() =>
      {"id": id, "poster_path": posterPath, "title": title};
}
