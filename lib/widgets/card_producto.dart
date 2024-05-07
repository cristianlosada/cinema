import 'dart:math';

import 'package:flutter/material.dart';
import 'package:proyecto_cinema/constants.dart';
import 'package:proyecto_cinema/views/detalles_producto.dart';
import 'package:proyecto_cinema/views/detalles_screen.dart';

class ProductoConfiteriaCard extends StatelessWidget {
  final ProductoConfiteria producto;
  const ProductoConfiteriaCard({
    super.key,
    required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(198, 198, 198, 1),
      height: 100,
      width: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => DetallesProductoView()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            producto.imagen,
          ),
        ),
      ),
    );
  }
}

class ProductoConfiteria {
  final int id;
  final String nombre;
  final String descripcionP;
  final double precioP;
  final String imagen;

  ProductoConfiteria({
    required this.id,
    required this.nombre,
    required this.descripcionP,
    required this.precioP,
    required this.imagen,
  });
}

List<ProductoConfiteria> productos = [
  ProductoConfiteria(
      id: 1,
      nombre: "gaseosa",
      descripcionP: "Bebida gaseosa",
      precioP: 23200,
      imagen: "assets/img/gaseosa.png"),
  ProductoConfiteria(
      id: 2,
      nombre: "Hamburguesa",
      descripcionP: "Es una hamburguesa",
      precioP: 20000,
      imagen: "assets/img/Hamburguesa.png"),
  ProductoConfiteria(
      id: 3,
      nombre: "Perro Caliente",
      descripcionP: "Es un perro caliente",
      precioP: 4000,
      imagen: "assets/img/perro.png"),
  ProductoConfiteria(
      id: 1,
      nombre: "gaseosa",
      descripcionP: "Bebida gaseosa",
      precioP: 23200,
      imagen: "assets/img/gaseosa.png"),
  ProductoConfiteria(
      id: 2,
      nombre: "Hamburguesa",
      descripcionP: "Es una hamburguesa",
      precioP: 20000,
      imagen: "assets/img/Hamburguesa.png"),
  ProductoConfiteria(
      id: 3,
      nombre: "Perro Caliente",
      descripcionP: "Es un perro caliente",
      precioP: 4000,
      imagen: "assets/img/perro.png"),
  ProductoConfiteria(
      id: 1,
      nombre: "gaseosa",
      descripcionP: "Bebida gaseosa",
      precioP: 23200,
      imagen: "assets/img/gaseosa.png"),
  ProductoConfiteria(
      id: 2,
      nombre: "Hamburguesa",
      descripcionP: "Es una hamburguesa",
      precioP: 20000,
      imagen: "assets/img/Hamburguesa.png"),
  ProductoConfiteria(
      id: 3,
      nombre: "Perro Caliente",
      descripcionP: "Es un perro caliente",
      precioP: 4000,
      imagen: "assets/img/perro.png"),
];
