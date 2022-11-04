import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/inputPass.dart';
import 'package:flutter/material.dart';

class Editpass extends StatefulWidget {
  const Editpass({super.key});

  @override
  State<Editpass> createState() => _EditpassState();
}

class _EditpassState extends State<Editpass> {
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
          "Ubah Kata Sadi",
          style: textBlack600.copyWith(fontSize: 20.0),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(26.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kata Sandi Lama",
                style: textBlack500.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputPass(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Kata Sandi Baru",
                style: textBlack500.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputPass(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Konfirmasi Kata Sandi Baru",
                style: textBlack500.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputPass(),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ButtonDefault(
                  color: ColorBlanjaloka.primaryColor,
                  height: 50.0,
                  width: 323.0,
                  text: "Ubah Kata Sandi",
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: Text(
                                "Kata sandi berhasil diubah!",
                                style: textBlack600.copyWith(fontSize: 18.0),
                                textAlign: TextAlign.center,
                              ),
                              content: Container(
                                height: 250.0,
                                width: 323.0,
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Silakan masuk kembali dengan kata sandi\nbaru anda",
                                      style:
                                          textBlack400.copyWith(fontSize: 14.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      "assets/img/success.png",
                                      height: 160.0,
                                      width: 180.0,
                                    )
                                  ],
                                ),
                              ),
                              actions: [],
                            ));
                  },
                  radius: 10.0,
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
