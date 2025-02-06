import 'package:counter_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MycounterApp());
}

class MycounterApp extends StatelessWidget {
  const MycounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
