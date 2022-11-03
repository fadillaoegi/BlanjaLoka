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
                  onPress: () {},
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
