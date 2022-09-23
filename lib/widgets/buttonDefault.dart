import 'package:blanjaloka/styles/colors.dart';
import 'package:flutter/material.dart';

class button {
  Color? color;
  String? text;
  double? height;
  double? width;
  VoidCallback? onPress;
}

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 323,
      child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Masuk",
            style: TextStyle(color: colorBlanjaloka.blackColor),
          )),
    );
  }
}
