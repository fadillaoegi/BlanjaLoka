import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/form_edit_widget.dart';
import 'package:blanjaloka/widgets/inputDefault.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:blanjaloka/widgets/textClick.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
          "Masuk",
          style: textBlack600.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(11.0),
        child: Stack(
          children: [
            // SECTION 1 PHOTO PROFILE
            Container(
              padding: const EdgeInsets.all(18.0),
              color: const Color(0xffF8F8F8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 75.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: ColorBlanjaloka.backgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/img/accountProfile.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      TextClick(
                        text: "Ubah Foto Profil",
                        size: 12.0,
                        onPress: (() {}),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // SECTION 2 FORM INPUT
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 509.0,
                decoration: const BoxDecoration(
                  color: ColorBlanjaloka.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: ListView(
                    children: [
                      // INPUT 1
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Shofa Nabila Alifa",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 2
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tempat Kelahiran",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Masukkan tempat kelahiran anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 3
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tanggal Lahir",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: FormEdit(
                                hint: "masukan Tanggal Lahit Anda",
                                onPress: (() {})),
                          ),
                        ],
                      ),
                      // INPUT 4
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alamat Tempat Tinggal",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Masukkan alamat tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 5
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Provinsi",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih provinsi tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 6
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kecamatan",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih kecamatan tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 7
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kode Pos",
                            style: textBlack500.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih kode pos tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      const Separator2(),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30.0),
                        child: ButtonDefault(
                          text: "Simpan",
                          height: 48.0,
                          width: 323.0,
                          onPress: () {},
                          color: ColorBlanjaloka.primaryColor,
                          radius: 10.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            // SECTION 3 BUTTON
          ],
        ),
      ),
    );
  }
}
