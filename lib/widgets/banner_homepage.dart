import 'package:flutter/material.dart';

class PrincipalBanner extends StatefulWidget {
  const PrincipalBanner({super.key});

  @override
  State<PrincipalBanner> createState() => _PrincipalBannerState();
}

class _PrincipalBannerState extends State<PrincipalBanner> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(10),
      width: screenWidth * 0.8,
      height: screenHeight * 0.3,
      child: Image.asset(
        "assets/img/banner.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
