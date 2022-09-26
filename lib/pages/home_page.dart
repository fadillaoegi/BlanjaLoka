import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/buttonOutLine.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/img/logoBlanjaloka.png",
                    height: 75.0,
                  ),
                  const SizedBox(
                    height: 120.0,
                  ),
                  Image.asset("assets/img/ilusHome.png", height: 220.0),
                  const SizedBox(
                    height: 107.0,
                  ),
                  ButtonDefault(
                    height: 48.0,
                    width: 323.0,
                    color: ColorBlanjaloka.primaryColor,
                    text: "Masuk",
                    radius: 10.0,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Separator(
                    text: "atau",
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ButtonOutLine(
                    height: 48.0,
                    width: 323.0,
                    color: ColorBlanjaloka.backgroundColor,
                    text: "Masuk",
                    radius: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
