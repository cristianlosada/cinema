import 'dart:math';

import 'package:flutter/material.dart';
import 'package:proyecto_cinema/constants.dart';
import 'package:proyecto_cinema/model/productos.dart';
import 'package:proyecto_cinema/views/detalles_producto.dart';
import 'package:proyecto_cinema/views/detalles_screen.dart';

class ProductoConfiteriaCard extends StatelessWidget {
  final Producto producto;
  final Function() press;
  const ProductoConfiteriaCard({
    super.key,
    required this.producto,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: Color.fromRGBO(198, 198, 198, 1),
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              producto.imagen,
            ),
          ),
        ),
      ),
    );
  }
}
