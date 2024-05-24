import 'package:flutter/material.dart';
import 'package:proyecto_cinema/views/confiteria_screen.dart';
import 'package:proyecto_cinema/views/principal_view.dart';
import 'package:proyecto_cinema/views/teatros_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    PrincipalView(),
    ConfiteriaView(),
    TeatrosView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrincipal(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: bottomNavBarPrincipal(),
    );
  }

  BottomNavigationBar bottomNavBarPrincipal() {
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

  AppBar appBarPrincipal() {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      centerTitle: true,
      title: const Text(
        'CinemaPark',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
    );
  }
}
