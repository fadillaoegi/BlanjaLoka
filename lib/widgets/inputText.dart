import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  String? hint;
  

  InputDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: Colors.black,
      obscureText: false,
      autocorrect: true,
      decoration: InputDecoration(
          hintText: "Masukkan email atau nomor telepon anda",
          hintStyle: textGrey400.copyWith(
            fontSize: 12.0,
          ),
          errorText: "Cek email atau password anda lagi",
          errorStyle: textRed500,
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: ColorBlanjaloka.blackColor,
            width: 5.0,
          ))),
    );
  }
}
