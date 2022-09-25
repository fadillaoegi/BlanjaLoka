import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

class RegSuccess extends StatelessWidget {
  const RegSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorBlanjaloka.backgroundColor),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              Text(
                "data",
                style: textBoldBlack28,
              )
            ],
          ),
        ),
      ),
    );
  }
}
