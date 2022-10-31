import 'package:blanjaloka/pages/agenda_page.dart';
import 'package:blanjaloka/pages/auth/forgotLinkPass_page.dart';
import 'package:blanjaloka/pages/auth/forgotPass_page.dart';
import 'package:blanjaloka/pages/first_page.dart';
import 'package:blanjaloka/pages/home_page.dart';
import 'package:blanjaloka/pages/auth/login_redisign_page.dart';
import 'package:blanjaloka/pages/auth/passSuccess_page.dart';
import 'package:blanjaloka/pages/auth/regis_page.dart';
import 'package:blanjaloka/pages/auth/sendLink_page.dart';
import 'package:blanjaloka/pages/privasi_page.dart';
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
      initialRoute: RouteBlanjaloka.first,
      routes: {
        RouteBlanjaloka.splash: (context) => const Splash(),
        RouteBlanjaloka.first: (context) => const First(),
        RouteBlanjaloka.home: (context) => const Home(),
        RouteBlanjaloka.login: (context) => const LoginPage(),
        RouteBlanjaloka.register: (context) => const RegisterPage(),
        RouteBlanjaloka.passSuccess: (context) => const PassSuccess(),
        RouteBlanjaloka.message: (context) => const SendLinkPage(),
        RouteBlanjaloka.forgotLinkPass: (context) => ForgotLinkPass(),
        RouteBlanjaloka.forgotPass: (context) => const ForgotPass(),
        RouteBlanjaloka.agenda: (context) => const AgendaPage(),
        RouteBlanjaloka.kebijakanprivasi: (context) => const Privasi(),
      },
    );
  }
}
