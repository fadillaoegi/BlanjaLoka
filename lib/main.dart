import 'package:blanjaloka/pages/home_page.dart';
import 'package:blanjaloka/pages/login_page.dart';
import 'package:blanjaloka/pages/passSuccess_page.dart';
import 'package:blanjaloka/pages/regis_page.dart';
import 'package:blanjaloka/pages/splash_page.dart';
import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Splash(),
      initialRoute: RouteBlanjaloka.passSuccess,
      routes: {
        RouteBlanjaloka.splash: (context) => const Splash(),
        RouteBlanjaloka.login: (context) => const LoginPage(),
        RouteBlanjaloka.register: (context) => const RegisterPage(),
        RouteBlanjaloka.home: (context) => const Home(),
        RouteBlanjaloka.passSuccess: (context) => const PassSuccess(),

        // '/login': (context) => const LoginPage(),
        // '/register': (context) => const RegisterPage(),
        // '/home': (context) => const Home()
      },
    );
  }
}
