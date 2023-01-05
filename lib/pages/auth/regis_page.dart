import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:blanjaloka/styles/colors.dart';
import  'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/button_auth.dart';
import 'package:blanjaloka/widgets/inputPass.dart';
import 'package:blanjaloka/widgets/inputDefault.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:blanjaloka/widgets/textClick.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          "Daftar",
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
              child: SingleChildScrollView(
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
                      "Silahkan lengkapi data-data di bawah ini untuk\nmendaftarkan akun.",
                      style: textGrey400.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama",
                          style: textBlack500.copyWith(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        InputDefault(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: textBlack500.copyWith(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        InputDefault(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Nomer Telpon
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Telepon",
                          style: textBlack500.copyWith(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        InputDefault(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Kata Sandi
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kata Sandi",
                          style: textBlack500.copyWith(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        InputDefault(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Konfirmasi Kata Sandi
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Konfirmasi Kata Sandi",
                          style: textBlack500.copyWith(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        InputDefault(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Dengan mendaftar anda mengerti dan menyetujui\nKebijakan Privasi dari aplikasi kami.",
                          style: textGrey400.copyWith(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32.0,
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
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonAuth(
                            image: 'assets/img/logoGoogle.png',
                            text: 'Google',
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonAuth(
                            image: 'assets/img/logoFB.png',
                            text: 'Facebook',
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah punya akun?",
                            style: textGrey500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          TextClick(
                            onPress: () {
                              Navigator.pushNamed(
                                context,
                                RouteBlanjaloka.login,
                              );
                            },
                            size: 14.0,
                            text: "Masuk disini",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
