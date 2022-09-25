import 'dart:async';

import 'package:blanjaloka/pages/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    SplashStart();
  }

  SplashStart() async {
    var durasiSplash = const Duration(seconds: 3);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/logoBlanjaloka.png",
                width: 249.0,
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
