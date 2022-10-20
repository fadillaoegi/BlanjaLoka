import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:flutter/material.dart';

class PassSuccess extends StatelessWidget {
  const PassSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Image.asset(
              'assets/img/success.png',
              height: 200.0,
              width: 225.75,
            ),
            const SizedBox(
              height: 35.0,
            ),
            Text(
              "Kata sandi berhasil diubah!",
              style: textBlack600.copyWith(fontSize: 20.0),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              "Silahkan masuk kembali dengan kata sandi",
              style: textBlack400.copyWith(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              "baru anda",
              style: textBlack400.copyWith(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 180.0,
            ),
            ButtonDefault(
              height: 48.0,
              width: 323.0,
              onPress: () {
                Navigator.pushReplacementNamed(
                  context,
                  RouteBlanjaloka.home,
                );
              },
              radius: 10.0,
              color: ColorBlanjaloka.primaryColor,
              text: "Masuk",
            ),
          ],
        ),
      ),
    );
  }
}
