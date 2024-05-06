import 'package:flutter/material.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text('CinemaPark'),
        actions: <Widget>[
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.settings)),
        ],
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: SafeArea(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), label: 'Confiteria'),
          BottomNavigationBarItem(icon: Icon(Icons.theaters), label: 'Teatros'),
        ],
      ),
    );
  }
}
