import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonAuth extends StatelessWidget {
  ButtonAuth({Key? key, this.image, this.onPress, this.text}) : super(key: key);

  String? text;
  String? image;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 323.0,
      height: 48.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ColorBlanjaloka.disableColor,
          ),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image!,
                height: 24.0,
                width: 24.0,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Text(
                text!,
                style: textBlack500.copyWith(
                  fontSize: 16.0,
                ),
              ),
            ],
          )),
    );
  }
}
