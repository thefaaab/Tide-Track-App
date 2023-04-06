import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:doctorq_clone/screens/appointment/appointment_screen.dart';
import 'package:doctorq_clone/screens/history/history_screen.dart';
import 'package:doctorq_clone/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  final tabs = [
    const HomeScreen(),
    const AppointmentScreen(),
    const HistoryScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 12,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: const Color(0xFF194FE3),
              textAlign: TextAlign.center,
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 12),
              ),
              icon: const Icon(Icons.home_filled)),
          BottomNavyBarItem(
              activeColor: const Color(0xFF194FE3),
              textAlign: TextAlign.center,
              title: const Text(
                'Appointment',
                style: TextStyle(fontSize: 12),
              ),
              icon: const Icon(Icons.calendar_month_rounded)),
          BottomNavyBarItem(
              activeColor: const Color(0xFF194FE3),
              textAlign: TextAlign.center,
              title: const Text(
                'History',
                style: TextStyle(fontSize: 12),
              ),
              icon: const Icon(Icons.history)),
          BottomNavyBarItem(
              activeColor: const Color(0xFF194FE3),
              textAlign: TextAlign.center,
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 12),
              ),
              icon: const Icon(Icons.person)),
        ],
      ),
    );
  }
}
