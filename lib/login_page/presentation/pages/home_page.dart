import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/login_page/presentation/pages/login_Welcome_back.dart';
import 'package:login_app/login_page/presentation/pages/open_camera.dart';
import 'package:login_app/login_page/presentation/pages/page_one.dart';
import 'package:login_app/login_page/presentation/pages/page_three.dart';
import 'package:login_app/login_page/presentation/pages/page_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'assets/images/home.svg',
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/images/document.svg',
              ),
              onPressed: () => _onItemTapped(1),
            ),
            /********** ICONE - CAMERA *************/
            IconButton(
              icon: SvgPicture.asset(
                'assets/images/camera.svg',
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OpenCamera(),
                ),
              ),
            ),
            /********** ICONE - SAIR *************/
            IconButton(
                icon: SvgPicture.asset(
                  'assets/images/exit.svg',
                ),
                onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginWelcomeBack()))),
          ],
        ),
      ),
    );
  }
}
