import 'package:flutter/material.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          PrincipalBanner(),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              'Cartelera',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Roboto'),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.4,
            child: ListaPeliculasView(),
          ),
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
          SizedBox(
            height: screenHeight * 0.4,
            child: ListaPeliculasView(),
          ),
          Container(
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
          SizedBox(
            height: screenHeight * 0.4,
            child: ListaPeliculasView(),
          ),
        ],
      ),
    );
  }
}
