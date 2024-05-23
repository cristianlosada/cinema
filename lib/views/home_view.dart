import 'package:flutter/material.dart';
import 'package:proyecto_cinema/views/confiteria_screen.dart';
import 'package:proyecto_cinema/views/principal_view.dart';
import 'package:proyecto_cinema/views/teatros_screen.dart';
import 'package:proyecto_cinema/widgets/banner_homepage.dart';
import 'package:proyecto_cinema/widgets/seccion_peliculas.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    PrincipalView(screenHeight: 1, screenWidth: 1),
    ConfiteriaView(),
    TeatrosView(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarPrincipal(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBarPrincipal(),
    );
  }

  BottomNavigationBar BottomNavBarPrincipal() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood), label: 'Confiteria'),
        BottomNavigationBarItem(icon: Icon(Icons.theaters), label: 'Teatros'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (i) {
        setState(() {
          _selectedIndex = i;
        });
      },
    );
  }

  AppBar AppBarPrincipal() {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      centerTitle: true,
      title: const Text('CinemaPark'),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
    );
  }
}
