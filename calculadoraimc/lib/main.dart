import 'package:calculadoraimc/screens/input_page.dart';
import 'package:calculadoraimc/screens/results_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      routes: {
        "/results": (context) => const ResultsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}