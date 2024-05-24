import 'dart:convert';
import 'package:proyecto_cinema/model/movies_list_response.dart';

CarteleraMoviesResult carteleraMoviesResultFromJson(String str) =>
    CarteleraMoviesResult.fromJson(json.decode(str));

String carteleraMoviesResultToJson(CarteleraMoviesResult data) =>
    json.encode(data.toJson());

class CarteleraMoviesResult {
  String message;
  MoviesListResponse data;

  CarteleraMoviesResult({
    required this.message,
    required this.data,
  });

  factory CarteleraMoviesResult.fromJson(Map<String, dynamic> json) =>
      CarteleraMoviesResult(
        message: json["message"],
        data: MoviesListResponse.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}
