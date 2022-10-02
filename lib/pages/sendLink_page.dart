import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

class SenLinkPage extends StatelessWidget {
  const SenLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Image.asset(
                'assets/img/sentMail.png',
                height: 150.0,
                width: 268.07,
              ),
              Text(
                "Link telah terkirim!",
                style: textBlack600.copyWith(
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Kami telah mengirimkan link untuk mengatur kata",
                style: textBlack400.copyWith(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "sandi baru ke nomor 081485290492",
                style: textBlack400.copyWith(
                  fontSize: 14.0,
                ),
              ),
              const Divider(
                height: 1,
                thickness: 2,
                indent: 45,
                endIndent: 15,
                color: ColorBlanjaloka.dividerColor,
              ),
              Row(
                children: [
                  Text(
                    "Belum dapat link? Kirim Ulang atau Ganti Nomor",
                    style: textBlack400.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
