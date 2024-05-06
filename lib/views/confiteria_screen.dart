import 'package:flutter/material.dart';
import 'package:proyecto_cinema/views/detalles_producto.dart';

class ConfiteriaView extends StatefulWidget {
  const ConfiteriaView({super.key});

  @override
  State<ConfiteriaView> createState() => _ConfiteriaViewState();
}

class _ConfiteriaViewState extends State<ConfiteriaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: productos.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DetallesProductoView()));
                },
                leading: const Text("imagen"),
                title: Text(productos[index].nombre),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 40,
            );
          }),
    );
  }
}

class ProductoConfiteria {
  final int id;
  final String nombre;
  final String descripcionP;
  final double precioP;

  ProductoConfiteria(
      {required this.id,
      required this.nombre,
      required this.descripcionP,
      required this.precioP});
}

List<ProductoConfiteria> productos = [
  ProductoConfiteria(
    id: 1,
    nombre: "gaseosa",
    descripcionP: "Bebida gaseosa",
    precioP: 23200,
  ),
  ProductoConfiteria(
      id: 2,
      nombre: "Hamburguesa",
      descripcionP: "Es una hamburguesa",
      precioP: 20000),
  ProductoConfiteria(
      id: 3,
      nombre: "Perro Caliente",
      descripcionP: "Es un perro caliente",
      precioP: 4000)
];
