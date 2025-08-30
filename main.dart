import 'package:flutter/material.dart';
import 'package:flutter_application_1/appProject.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 182, 236, 232),
          title: const Text(
            'DICE-GAME',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 34, 29, 8),
            ),
          ),
        ),
        body: const GradiantBackground(
          Color.fromARGB(255, 79, 4, 54),
          Color.fromARGB(255, 229, 161, 236),
        ),
      ),
    );
  }
}
