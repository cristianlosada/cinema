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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const PrincipalBanner(),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Cartelera',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width: isDesktop ? screenWidth * 0.8 : constraints.maxWidth,
                height: screenHeight * 0.4,
                child: const ListaPeliculasView(),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Proximos Estrenos',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width: isDesktop ? 900 : constraints.maxWidth,
                height: screenHeight * 0.4,
                child: const ListaPeliculasView(),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Promociones',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 1024;

              return SizedBox(
                width: isDesktop ? 900 : constraints.maxWidth,
                height: screenHeight * 0.4,
                child: const ListaPeliculasView(),
              );
            },
          ),
        ],
      ),
    );
  }
}
