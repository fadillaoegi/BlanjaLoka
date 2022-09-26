import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:flutter/material.dart';

class RegSuccess extends StatelessWidget {
  const RegSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorBlanjaloka.backgroundColor,
        elevation: 0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(40.0),
                height: 160.0,
                width: 286.84,
                child: Image.asset(
                  "assets/img/welcome.png",
                  height: 160.0,
                  width: 286.84,
                ),
              ),
              Text(
                "Berhasil mendaftar!",
                style: textBlack500.copyWith(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text("Selamat! Akunmu sudah terdaftar.",
                  style: textBlack400.copyWith(
                    fontSize: 14.0,
                  )),
              Text("Silahkan masuk untuk melanjutkan.",
                  style: textBlack400.copyWith(
                    fontSize: 14.0,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              ButtonDefault(
                height: 48.0,
                width: 156.0,
                color: ColorBlanjaloka.primaryColor,
                text: "Masuk",
                onPress: (() => debugPrint("Button Masuk clicked")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
