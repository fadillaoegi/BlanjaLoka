import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/inputDefault.dart';
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
            "Lupa kata Sandi",
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
              Container(
                margin: const EdgeInsets.only(top: 35.0),
                height: 84.0,
                width: 327.0,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(224, 221, 246, 248),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                          "Masukkan email atau nomor\ntelepon yang terdaftar untuk mengatur kata\nsandi baru.")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              SizedBox(
                width: 323.0,
                child: InputDefault(),
              ),
              const SizedBox(
                height: 45.0,
              ),
              ButtonDefault(
                height: 48.0,
                width: 323.0,
                onPress: (() {}),
                color: ColorBlanjaloka.primaryColor,
                radius: 10.0,
                text: "kirim",
              )
            ],
          )),
        ));
  }
}
