import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/widgets/Item_profile_widget.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80.0, bottom: 225.0),
                    height: 100.0,
                    width: 100.0,
                    child: Image.asset(
                      "assets/img/accountProfile.png",
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      const Separator2(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(
                              Icons.settings,
                              color: ColorBlanjaloka.iconColor,
                            ),
                            label: "Pengatura Akun",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(
                              Icons.language,
                              color: ColorBlanjaloka.iconColor,
                            ),
                            label: "Pengaturan Bahasa",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(
                              Icons.help,
                              color: ColorBlanjaloka.iconColor,
                            ),
                            label: "Paling Banyak Ditanyakan",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(
                              Icons.description,
                              color: ColorBlanjaloka.iconColor,
                            ),
                            label: "Ketentuan Layanan",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(
                              Icons.security,
                              color: ColorBlanjaloka.iconColor,
                            ),
                            label: "Kebijakan Privasi",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: const Icon(Icons.logout,
                                color: ColorBlanjaloka.redColor),
                            label: "Keluar",
                            color: ColorBlanjaloka.redColor,
                            colorArrow: ColorBlanjaloka.redColor,
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
