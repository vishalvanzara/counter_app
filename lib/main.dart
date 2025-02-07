import 'package:counter_app/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MycounterApp());
}

class MycounterApp extends StatelessWidget {
  const MycounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardScreen(),
    );
  }
}
