import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavbar extends StatelessWidget {
  final selectedIndex;
  final ValueChanged<int> onClicked;
  BottomNavbar({this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xffAFAEAD),
        selectedItemColor: Color(0xffF97F67),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                // color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.hourglass_empty_outlined,
                // color: Colors.black,
              ),
              label: 'Reservations'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.domain_outlined,
                // color: Colors.black,
              ),
              label: 'Hotels'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                // color: Colors.black,
              ),
              label: 'Profile')
        ]);
  }
}
