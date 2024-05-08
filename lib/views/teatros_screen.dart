import 'package:flutter/material.dart';

class TeatrosView extends StatelessWidget {
  const TeatrosView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(teatros[index].imagen),
            title: Text(teatros[index].nombre),
            subtitle: Text(teatros[index].direccion),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
          );
        },
        itemCount: teatros.length);
  }
}

class Teatro {
  final int id;
  final String nombre;
  final String direccion;
  final String imagen;

  Teatro(
      {required this.id,
      required this.nombre,
      required this.direccion,
      required this.imagen});
}

List<Teatro> teatros = [
  Teatro(
      id: 1,
      nombre: "cinemark san pedro",
      direccion: "san pedro plaza segundo piso",
      imagen: "imagen"),
  Teatro(
      id: 2,
      nombre: "cinemark unicentro",
      direccion: "unicentro primer piso",
      imagen: "imagen"),
  Teatro(
      id: 3,
      nombre: "cinemark unico",
      direccion: "unico primer piso",
      imagen: "imagen")
];
