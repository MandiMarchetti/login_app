import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'Page Three',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'assets/google_fonts/Poppins-SemiBold.ttf',
        ),
      ),
    ));
  }
}
