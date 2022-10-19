import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorBlanjaloka.blackColor,
          ),
        ),
        title: Text(
          "",
          style: textBlack600.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Image.asset(
                "assets/img/sentMail.png",
                width: 268.07,
                height: 150.0,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "Link telah terkirim!",
                style: textBlack600.copyWith(fontSize: 18.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Kami telah mengirimkan link untuk mengatur kata",
                style: textGrey600.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                "sandi baru ke alamat email email@gmail.com",
                style: textGrey600.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Separator(text: ""),
              const SizedBox(
                height: 25.0,
              ),
              Text("Belum dapat link? Kirim ulang dalam 50 detik")
            ],
          ),
        ),
      ),
    );
  }
}
