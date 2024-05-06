import 'package:flutter/material.dart';

class Pelicula {
  int id;
  String nombre;
  String descripcion;
  String fechaEstreno;
  String imagen;

  Pelicula(
      {required this.id,
      required this.nombre,
      required this.descripcion,
      required this.fechaEstreno,
      required this.imagen});
}

List<Pelicula> peliculas = [
  Pelicula(
      id: 1,
      nombre: "avengers",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/banner.jpeg"),
  Pelicula(
      id: 2,
      nombre: "El Padrino",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/Padrino"),
  Pelicula(
      id: 3,
      nombre: "Hulk",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/Poster-Hulk.jpg"),
  Pelicula(
      id: 4,
      nombre: "sonic",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/sonic.png"),
  Pelicula(
      id: 5,
      nombre: "avengers",
      descripcion: "pelicula de avengers",
      fechaEstreno: "1989, 11, 9",
      imagen: "assets/img/Venom.jpg")
];
