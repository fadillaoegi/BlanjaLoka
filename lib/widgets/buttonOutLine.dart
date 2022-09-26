import 'package:blanjaloka/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonOutLine extends StatelessWidget {
  Color? color;
  String? text;
  double? height;
  double? width;
  double? radius;
  VoidCallback? onPress;
  ButtonOutLine(
      {Key? key,
      this.color,
      this.height,
      this.onPress,
      this.text,
      this.width,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Color(0xff398AB9), width: 1),
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!))),
          onPressed: () {},
          child: Text(
            text!,
            style: const TextStyle(color: Color(0xff398AB9)),
          )),
    );
  }
}
