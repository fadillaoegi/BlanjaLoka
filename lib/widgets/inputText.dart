import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  const InputDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      cursorColor: Colors.black,
      obscureText: false,
    );
  }
}
