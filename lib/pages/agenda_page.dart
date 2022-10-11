import 'package:blanjaloka/styles/textStyle.dart';
import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/agendaIcon.png',
              height: 174.0,
              width: 238.71,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Agenda Kosong",
              style: textBlack500.copyWith(fontSize: 20.0),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Anda tidak memiliki agenda\napapun untuk saat ini.",
              style: textGrey400.copyWith(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ),
    );
  }
}
