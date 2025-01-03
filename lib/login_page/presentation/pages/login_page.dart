import 'dart:async';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List<Map<String, String>> _content = [
    {
      'image': 'assets/images/img_welcome_1.png',
      'text': 'Parcele o que quiser, onde e como preferir',
    },
    {
      'image': 'assets/images/img_welcome_2.png',
      'text': 'Compre no Pix e parcele em 12x',
    },
    {
      'image': 'assets/images/img_welcome_3.png',
      'text': 'Gerencie de forma simples as suas parcelas',
    },
  ];

  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startImageAndTextSwitcher();
  }

  void _startImageAndTextSwitcher() {
    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _content.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Stack(
        children: [
          Image.asset(
            _content[_currentIndex]['image']!,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                _content[_currentIndex]['text']!,
                style: const TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.14,
                ),
              ),
              //Botão 1
              ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor do primeiro botão
                  minimumSize: const Size(370, 59), // Tamanho mínimo do botão
                  // padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Já sou cliente',
                  style: TextStyle(
                    fontSize: 18, // Tamanho da letra do botão
                    color: Color.fromARGB(255, 37, 37, 37), // Cor da frase do botão
                  ),
                ),
              ),
              //Botão2
              ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 113, 240, 117), // Cor de fundo
                  minimumSize: const Size(370, 59),
                  // padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Quero me cadastrar',
                  style: TextStyle(
                    fontSize: 18, // Tamanho da letra
                    color: Color.fromARGB(255, 37, 37, 37), // Cor da letra
                  ),
                ),
              ),
            ],
          )

          // Positioned.fill(
          //   child: Image.asset(
          //     _content[_currentIndex]['image']!,
          //     fit: BoxFit.cover, // Coloquei esse fit para ajustar a imagem na tela toda
          //   ),
          // ),
          // Positioned(
          //   bottom: 220,
          //   left: 40,
          //   right: 10,
          //   child: Text(
          //     // 'Parcele o que quiser, onde e como preferir',
          //     _content[_currentIndex]['text']!,
          //     style: const TextStyle(
          //       fontSize: 44,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //       height: 1.14,
          //     ),
          //   ),
          // ),
          //**********Botão 'JÁ SOU CLIENTE' */
          // Positioned(
          //   bottom: 130,
          //   left: 0,
          //   right: 0,
          //   child: Center(
          //     child: ElevatedButton(
          //       onPressed: () {
          //         print('Botão pressionado!');
          //       },
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.white, // Cor do primeiro botão
          //         minimumSize: const Size(370, 59), // Tamanho mínimo do botão
          //         padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //       ),
          //       child: const Text(
          //         'Já sou cliente',
          //         style: TextStyle(
          //           fontSize: 18, // Tamanho da letra do botão
          //           color: Color.fromARGB(255, 37, 37, 37), // Cor da frase do botão
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          //**********Botão 'QUERO ME CADASTRAR' */
          // Positioned(
          //   bottom: 50,
          //   left: 0,
          //   right: 0,
          //   child: Center(
          //     child: ElevatedButton(
          //       onPressed: () {
          //         print('Botão pressionado!');
          //       },
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: const Color.fromARGB(255, 113, 240, 117), // Cor de fundo
          //         minimumSize: const Size(370, 59),
          //         padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //       ),
          //       child: const Text(
          //         'Quero me cadastrar',
          //         style: TextStyle(
          //           fontSize: 18, // Tamanho da letra
          //           color: Color.fromARGB(255, 37, 37, 37), // Cor da letra
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
