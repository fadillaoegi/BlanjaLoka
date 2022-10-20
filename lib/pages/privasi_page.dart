import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/widgets/buttonDefault.dart';
import 'package:blanjaloka/widgets/inputDefault.dart';
import 'package:blanjaloka/widgets/separator.dart';
import 'package:flutter/material.dart';

class Privasi extends StatefulWidget {
  const Privasi({Key? key}) : super(key: key);

  @override
  State<Privasi> createState() => _PrivasiState();
}

class _PrivasiState extends State<Privasi> {
  bool isChecked = false;
  String textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum facilisis leo vel fringilla. Purus sit amet volutpat consequat mauris nunc congue nisi. Turpis egestas pretium aenean pharetra. Massa eget egestas purus viverra accumsan in nisl nisi scelerisque. Elit pellentesque habitant morbi tristique senectus et netus et. Lacinia at quis risus sed vulputate odio. Ornare aenean euismod elementum nisi. Vestibulum lectus mauris ultrices eros in cursus turpis massa tincidunt. Molestie at elementum eu facilisis sed odio morbi. Sit amet luctus venenatis lectus. Nunc mattis enim ut tellus elementum sagittis vitae. Mi tempus imperdiet nulla malesuada pellentesque elit. Accumsan tortor posuere ac ut consequat semper. Est ante in nibh mauris cursus mattis.Enim tortor at auctor urna nunc id cursus metus. \n\nPulvinar elementum integer enim neque volutpat. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. Eget nulla facilisi etiam dignissim diam. Mi bibendum neque egestas congue quisque egestas diam. Auctor neque vitae tempus quam pellentesque nec nam. Neque sodales ut etiam sit amet nisl purus in. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus.Molestie at elementum eu facilisis sed odio morbi. Facilisis sed odio morbi quis. Dui ut ornare lectus sit. Vitae purus faucibus ornare suspendisse sed. Dui ut ornare lectus sit. Vitae purus faucibus ornare suspendisse sed.Laoreet sit amet cursus sit amet dictum. Curabitur vitae nunc sed velit dignissim. Felis eget velit aliquet sagittis id consectetur purus ut. Libero enim sed faucibus turpis in eu mi bibendum neque. Pretium nibh ipsum consequat nisl vel pretium lectus quam. Nisl purus in mollis nunc sed id. Venenatis lectus magna fringilla urna. Tempor commodo ullamcorper a lacus vestibulum sed arcu.";
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
          "Kebijakan Privasi",
          style: textBlack600.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(14.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                textLorem,
                style: textBlack400.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Separator2(),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                      "Saya telah membaca dan menyetujui Kebijakan\nPrivasi dari aplikasi Blanjaloka Akselerator.")
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              ButtonDefault(
                text: "Lanjutkan",
                color: ColorBlanjaloka.primaryColor,
                width: 323.0,
                height: 48.0,
                radius: 10.0,
                onPress: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
