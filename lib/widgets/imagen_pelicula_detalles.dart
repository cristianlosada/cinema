import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class imagen_detalles extends StatelessWidget {
  const imagen_detalles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: Image.asset(
            "assets/img/Venom.jpg",
            height: 500,
            fit: BoxFit.cover,
          )),
    );
  }
}
