import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputDefault extends StatelessWidget {
  String? hint = "Masukkan email atau nomor telepon anda";

  InputDefault({Key? key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: ColorBlanjaloka.primaryColor,
      obscureText: false,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: textGrey400.copyWith(
          fontSize: 12.0,
        ),
        // errorText: "Cek email atau password anda lagi",
        errorStyle: textRed500,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorBlanjaloka.blackColor,
            width: 10.0,
          ),
        ),
      ),
    );
  }
}
