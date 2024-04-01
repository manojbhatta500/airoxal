import 'package:airoxal/features/help/screens/help.dart';
import 'package:airoxal/features/internet/screens/internet.dart';
import 'package:airoxal/features/shop/screens/shop.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const Shop(), const Internet(), const Help()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/shop_inactive.png',
                width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/shop_active.png',
                width: 30, height: 30),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/clarity_world-solid1.png',
                width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/clarity_world-solid2.png',
                width: 30, height: 30),
            label: 'Internet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/ic_baseline-help1.png',
                width: 30, height: 30),
            activeIcon: Image.asset('assets/icons/ic_baseline-help2.png',
                width: 30, height: 30),
            label: 'Help',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedLabelStyle: navigatorText,
        selectedLabelStyle: navigatorText,
      ),
    ));
  }
}
