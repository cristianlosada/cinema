import 'package:flutter/material.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          PrincipalBanner(),
          SizedBox(height: 10),
          Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.95,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Ulimos Estrenos',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Roboto'),
            ),
          ),
          ListaPeliculasView(),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              'Proximos Estrenos',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Roboto'),
            ),
          ),
          ListaPeliculasView(),
          Container(
            height: screenHeight * 0.08,
            width: screenWidth * 0.95,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              'Promociones',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Roboto'),
            ),
          ),
          ListaPeliculasView(),
        ],
      ),
    );
  }
}
