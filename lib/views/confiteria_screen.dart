import 'package:flutter/material.dart';
import 'package:proyecto_cinema/constants.dart';
import 'package:proyecto_cinema/views/detalles_producto.dart';
import 'package:proyecto_cinema/widgets/card_producto.dart';

class ConfiteriaView extends StatefulWidget {
  const ConfiteriaView({super.key});

  @override
  State<ConfiteriaView> createState() => _ConfiteriaViewState();
}

class _ConfiteriaViewState extends State<ConfiteriaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: productos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return ProductoConfiteriaCard(producto: productos[index]);
            }));
  }
}
