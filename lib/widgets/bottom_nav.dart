import 'package:blanjaloka/pages/agenda_page.dart';
import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/widgets/tes.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const AgendaPage(),
      const AgendaPage(),
      const AgendaPage(),
      const AgendaPage(),
    ];

    final List<BottomNavigationBarItem> bottomNavItem = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'home',
      ),
    ];

    final botNavBar = BottomNavigationBar(
      items: bottomNavItem,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      backgroundColor: ColorBlanjaloka.dividerColor,
      currentIndex: currentIndex,
      unselectedItemColor: ColorBlanjaloka.blackColor,
      selectedItemColor: ColorBlanjaloka.doneColor,
    );
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: botNavBar,
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   onTap: onTap,
      //   items: [],
      // ),
    );
  }
}
