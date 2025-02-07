import 'package:counter_app/home_screen.dart';
import 'package:counter_app/phonescreen.dart';
import 'package:counter_app/profilescreen.dart';
import 'package:counter_app/settingscreen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

int selectedIndex = 0;
List<Widget> dashbordScreen = const [
  HomeScreen(),
  Settingscreen(),
  Profilescreen(),
  Phonescreen()
];

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text('MY APP'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'phone'),
          ]),
      body: dashbordScreen[selectedIndex],
    );
  }
}
