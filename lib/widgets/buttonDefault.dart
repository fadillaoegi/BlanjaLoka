import 'package:blanjaloka/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  Color? color;
  String? text;
  double? height;
  double? width;
  VoidCallback? onPress;
  ButtonDefault({
    Key? key,
    this.color,
    this.height,
    this.onPress,
    this.text,
    this.width,
  }) : super(key: key);

  // ButtonStyle  ({dynamic dynamic, })

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 323,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: colorBlanjaloka.primaryColor,
          ),
          onPressed: () {},
          child: const Text(
            "Masuk",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
