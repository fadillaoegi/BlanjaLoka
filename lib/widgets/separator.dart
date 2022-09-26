import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final String? text;
  const Separator({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            height: 1,
            thickness: 2,
            indent: 45,
            endIndent: 15,
            color: ColorBlanjaloka.dividerColor,
          ),
        ),
        Text(
          text!,
          style: textBlack400.copyWith(fontSize: 14.0),
        ),
        const Expanded(
          child: Divider(
            height: 1,
            thickness: 2,
            indent: 15,
            endIndent: 45,
            color: ColorBlanjaloka.dividerColor,
          ),
        ),
      ],
    );
  }
}
