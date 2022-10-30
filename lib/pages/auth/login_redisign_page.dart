import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/size_responsive.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Section 1
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                width: widhtBox,
                height: 171.0,
                decoration: BoxDecoration(
                    color: ColorBlanjaloka.backgroundColor,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                          color: ColorBlanjaloka.blackColor.withOpacity(0.2),
                          offset: const Offset(0, 3),
                          spreadRadius: 5.0,
                          blurRadius: 7.0),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 53.0,
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 232.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Nabila Alifa"),
                                  Icon(
                                    Icons.drive_file_rename_outline,
                                    size: 17.0,
                                  ),
                                ],
                              ),
                            ),
                            const Text("087909890765"),
                            const Text("alifa@gmail.com"),
                          ],
                        )
                      ],
                    ),

                    // Alert Verivication
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Separator2(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline),
                          color: ColorBlanjaloka.redColor,
                        ),
                        Text(
                          "Akun anda belum terverifikasi\nVerifikasi akun anda sekarang.",
                          style: textBlack400.copyWith(
                              color: Colors.red, fontSize: 12.0),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: ColorBlanjaloka.redColor),
                          child: Text(
                            "Verifikasi",
                            style: textBlack500.copyWith(
                                color: ColorBlanjaloka.backgroundColor,
                                fontSize: 12.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Section 2
            ],
          ),
        ),
      ),
    );
  }
}
