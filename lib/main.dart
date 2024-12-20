import 'package:flutter/material.dart';
import 'package:login_app/login_page/presentation/pages/home_page.dart';
import 'package:login_app/login_page/presentation/pages/login_Welcome_back.dart';
// import 'package:login_app/login_page/presentation/pages/login_welcome_back.dart';
// import 'package:login_app/login_page/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginPage(),
      home: const LoginWelcomeBack(),
    );
  }
}