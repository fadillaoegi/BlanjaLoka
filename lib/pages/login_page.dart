import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/inputPass.dart';
import 'package:blanjaloka/widgets/inputText.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:blanjaloka/widgets/textClick.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: ColorBlanjaloka.blackColor,
          ),
        ),
        title: Text(
          "Masuk",
          style: textBlack600.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.8,
                vertical: 26.8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: textBlack600.copyWith(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Masukkan email atau nomor telepon dan kata\nsandi anda untuk melanjutkan.",
                    style: textGrey400.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Text(
                    "Email atau Nomor Telepon",
                    style: textBlack500.copyWith(fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  InputDefault(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Kata Sandi",
                    style: textBlack500.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const InputPass(),
                  const SizedBox(
                    height: 6.0,
                  ),
                  TextClick(
                    text: "Lupa Password?",
                    size: 12.0,
                  ),
                  const SizedBox(
                    height: 28.0,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonDefault(
                          height: 48.8,
                          width: 323.0,
                          onPress: () {},
                          text: "Masuk",
                          color: ColorBlanjaloka.primaryColor,
                          radius: 10.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Separator(
                    text: "Atau masuk dengan",
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
