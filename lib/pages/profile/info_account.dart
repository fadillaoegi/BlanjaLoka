import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/inputDefault.dart';
import 'package:flutter/material.dart';

class InfoAccount extends StatelessWidget {
  const InfoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorBlanjaloka.blackColor,
          ),
        ),
        title: Text(
          "Informasi Akun",
          style: textBlack600.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(26.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            // INPUT 1
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alamat Email",
                    style: textBlack500.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                      height: 40.0,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: InputDefault(
                              hint: "email@gmail.com",
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: const Icon(Icons.drive_file_rename_outline),
                            onPressed: () {},
                          )),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            // INPUT 2
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nomor Telepon",
                    style: textBlack500.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                      height: 40.0,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: InputDefault(
                              hint: "08909907538",
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: const Icon(Icons.drive_file_rename_outline),
                            onPressed: () {},
                          )),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
