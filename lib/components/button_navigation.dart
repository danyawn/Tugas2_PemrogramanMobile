import 'package:flutter/material.dart';
import 'package:tugas1/pages/calculator_page.dart';
import 'package:tugas1/pages/homepage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    HomePage(),
    CalculatorPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas TPM'),
        shadowColor: Colors.grey[500],
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Kelompok'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
            ),
            label: 'Kalkulator',
          )
        ],
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        selectedItemColor: Color.fromARGB(255, 51, 88, 107),
        unselectedItemColor: Color.fromARGB(255, 130, 141, 146),
        currentIndex: selectedIndex,
      ),
    );
  }
}
