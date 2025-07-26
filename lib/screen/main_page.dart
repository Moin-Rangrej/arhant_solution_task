import 'package:arhant_solution_task/screen/Onboarding/attendance/attendance.dart';
import 'package:arhant_solution_task/screen/Onboarding/home/home.dart';
import 'package:arhant_solution_task/screen/Onboarding/profile/profile.dart';
import 'package:arhant_solution_task/screen/Onboarding/stock/stock.dart';
import 'package:arhant_solution_task/screen/Onboarding/vendor/vendor.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Stock(),
    Vendor(),
    Attendance(),
    Profile(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.width > 600
        ? 42.0
        : 16.0;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTappedItem,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Stocks"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Vendors"),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: "Attendance",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
