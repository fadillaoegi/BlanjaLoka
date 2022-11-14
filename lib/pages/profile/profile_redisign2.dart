import 'package:blanjaloka/routes/routes_blanjaloka.dart';
import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/size_responsive.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/Item_profile_widget.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/buttonOutLine.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Widget Card Profile
  Widget sectionOne = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    margin: const EdgeInsets.only(top: 26.0),
    width: widhtBox,
    height: 90.0,
    decoration: BoxDecoration(
        color: ColorBlanjaloka.backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1.0, color: ColorBlanjaloka.blackColor)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Nabila Alifa"),
                      Icon(
                        Icons.drive_file_rename_outline,
                        size: 17.0,
                      ),
                    ],
                  ),
                ),
                const Text("alifa@gmail.com"),
              ],
            )
          ],
        ),
      ],
    ),
  );

  Widget alertNotif = Container(
    padding: const EdgeInsets.all(10.0),
    height: 73.0,
    width: 323.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: ColorBlanjaloka.redColor.withOpacity(0.2)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline),
          color: ColorBlanjaloka.redColor,
        ),
        Text(
          "Lengkapi data diri dan data\nperusahaan Anda untuk\nmengajukan investasi.",
          style: textBlack400.copyWith(color: Colors.red, fontSize: 11.0),
        ),
        Container(
          height: 26.0,
          width: 108.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: ColorBlanjaloka.redColor),
            child: Text(
              "Lengkapi data",
              style: textBlack500.copyWith(
                  color: ColorBlanjaloka.backgroundColor, fontSize: 12.0),
            ),
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: ColorBlanjaloka.blackColor),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            // Section 1
            sectionOne,
            const SizedBox(
              height: 26.0,
            ),
            alertNotif,
            const SizedBox(
              height: 26.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
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
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Separator2(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
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
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Separator2(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
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
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Separator2(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
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
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Separator2(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
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
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Separator2(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  ItemProfile(
                    icon: const Icon(Icons.logout,
                        color: ColorBlanjaloka.iconColor),
                    label: "Keluar",
                    color: ColorBlanjaloka.iconColor,
                    colorArrow: ColorBlanjaloka.iconColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
