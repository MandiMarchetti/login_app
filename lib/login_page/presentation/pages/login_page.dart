import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/img_welcome_1.png",
              fit: BoxFit.cover, // Coloquei esse fit para ajustar a imagem na tela toda
            ),
          ),
          const Positioned(
            bottom: 220,
            left: 60,
            right: 0,
            child: Text(
              'Parcele o que quiser, onde e como preferir',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.14,
              ),
            ),
          ),
          //**********Botão 'JÁ SOU CLIENTE' */
          Positioned(
            bottom: 130,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Cor do primeiro botão
                  minimumSize: const Size(370, 59), // Tamanho mínimo do botão
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
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
            ),
          ),
          //**********Botão 'QUERO ME CADASTRAR' */
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 113, 240, 117), // Cor de fundo
                  minimumSize: const Size(370, 59),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
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
            ),
          ),
        ],
      ),
    );
  }
}
