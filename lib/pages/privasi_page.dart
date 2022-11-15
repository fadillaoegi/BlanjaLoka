import 'package:blanjaloka/styles/colors.dart';
import 'package:blanjaloka/styles/textStyle.dart';
import 'package:blanjaloka/text/privasi_text.dart';
import 'package:flutter/material.dart';

class Privasi extends StatefulWidget {
  const Privasi({Key? key}) : super(key: key);

  @override
  State<Privasi> createState() => _PrivasiState();
}

class _PrivasiState extends State<Privasi> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Kebijakan Privasi",
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: ColorBlanjaloka.backgroundColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(p1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(p2, style: textBlack400),
                const SizedBox(
                  height: 20.0,
                ),
                Text(a, style: textBlack600),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ap1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ap2, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ap3, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ap4, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(b, style: textBlack600),
                const SizedBox(
                  height: 10.0,
                ),
                Text(bp1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(bp2, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(bp3, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(c, style: textBlack600),
                const SizedBox(
                  height: 10.0,
                ),
                Text(cp1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(d, style: textBlack600),
                const SizedBox(
                  height: 10.0,
                ),
                Text(dp1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(dp2, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Text(dp3, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(e, style: textBlack600),
                const SizedBox(
                  height: 10.0,
                ),
                Text(ep1, style: textBlack400),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    // const SizedBox(
                    //   width: 5.0,
                    // ),
                    const Text(
                      "Saya telah membaca dan menyetujui Kebijakan\nPrivasi dari aplikasi Blanjaloka Akselerator.",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 48.0,
                  width: 323.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ColorBlanjaloka.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Text(
                        "Lanjutkan",
                        style: TextStyle(
                          color: ColorBlanjaloka.backgroundColor,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
