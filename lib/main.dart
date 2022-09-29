import 'package:blanjaloka/pages/home_page.dart';
import 'package:blanjaloka/pages/login_page.dart';
import 'package:blanjaloka/pages/regis_page.dart';
import 'package:blanjaloka/pages/splash_page.dart';
import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      initialRoute: RouteName.splash,
      routes: {
        // Cara rapi
        RouteName.login: (context) => const LoginPage(),

        // Cara manual
        // '/login': (context) => const LoginPage(),
        // '/register': (context) => const RegisterPage(),
        // '/home': (context) => const Home()
      },
    );
  }
}
