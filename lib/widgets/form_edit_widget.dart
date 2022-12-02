import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormEdit extends StatelessWidget {
  FormEdit({super.key, this.hint, this.onPress});
  String? hint;
  VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: ColorBlanjaloka.primaryColor,
      obscureText: false,
      autocorrect: true,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPress,
          icon: const Icon(Icons.date_range_outlined),
        ),
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
