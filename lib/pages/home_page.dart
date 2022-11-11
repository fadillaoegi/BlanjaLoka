import 'package:blanjaloka/pages/agenda_page.dart';
import 'package:blanjaloka/pages/profile/profile_redisign2.dart';
import 'package:blanjaloka/pages/profile/profile_redisign_page.dart';
import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:blanjaloka/styles/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      const ProfilePage(),
    ];

    final List<BottomNavigationBarItem> bottomNavItem = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Beranda',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.store_mall_directory_sharp),
        label: 'Pasar modal',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month),
        label: 'Agenda',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profil',
      ),
    ];

    final botNavBar = BottomNavigationBar(
      items: bottomNavItem,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      backgroundColor: ColorBlanjaloka.backgroundColor,
      currentIndex: currentIndex,
      unselectedItemColor: ColorBlanjaloka.blackColor,
      selectedItemColor: ColorBlanjaloka.primaryColor,
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
