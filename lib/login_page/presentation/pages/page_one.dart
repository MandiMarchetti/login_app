import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'Home Page',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'assets/google_fonts/Poppins-SemiBold.ttf',
        ),
      ),
    ));
  }
}
