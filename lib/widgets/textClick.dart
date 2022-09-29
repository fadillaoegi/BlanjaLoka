import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextClick extends StatelessWidget {
  TextClick({
    Key? key,
    this.onPress,
    this.size,
    this.text,
  }) : super(key: key);

  String? text;
  double? size;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: Text(
          text!,
          style: textPrimary600.copyWith(
            fontSize: size,
          ),
        ));
  }
}
