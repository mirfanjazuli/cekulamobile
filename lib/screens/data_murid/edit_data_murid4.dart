import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/data_murid/data_murid1.dart';
import 'package:cekula/screens/drawer/drawer.dart';

class EditDataMurid4 extends StatelessWidget {
  const EditDataMurid4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final paddingHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      drawer: const DrawerView(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: bodyHeight * 0.10625 + 20,
                ),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      height: bodyHeight * (1 - 0.10625) - 87 - paddingHeight,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 35,
                          ),
                          Text(
                            "Foto Murid",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Upload Berkas',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, top: 9),
                                      child: Image.asset(
                                        'assets/Upload.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Ijazah",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Upload berkas',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, top: 9),
                                      child: Image.asset(
                                        'assets/Upload.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Kartu Keluarga",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Upload berkas',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, top: 9),
                                      child: Image.asset(
                                        'assets/Upload.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Akte Kelahiran",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Upload berkas',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, top: 9),
                                      child: Image.asset(
                                        'assets/Upload.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "KTP Orang Tua",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Upload berkas',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, top: 9),
                                      child: Image.asset(
                                        'assets/Upload.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    const RoundedAlertBox(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: bodyHeight * 0.13125,
              width: mediaQueryWidth,
              child: AppBar(
                automaticallyImplyLeading: false,
                leadingWidth: 20,
                toolbarHeight: bodyHeight * 0.10625,
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Builder(builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu));
                      }),
                      Text(
                        "Data Murid",
                        style: GoogleFonts.rubik(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                flexibleSpace: Container(
                  width: mediaQueryWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color(0xFF9FC3F9),
                        Color(0xFF83DBE0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: bodyHeight * 0.10625 - 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0, top: 16),
                            child: Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Halaman 4 dari',
                                        style: GoogleFonts.rubik(
                                          color: const Color(0xFF9FC3F9),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                        children: [
                                      TextSpan(
                                        text: ' 4',
                                        style: GoogleFonts.rubik(
                                          color: const Color(0xFF83DBE0),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ]))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class RoundedAlertBox extends StatefulWidget {
  const RoundedAlertBox({Key? key}) : super(key: key);

  @override
  _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
}

class _RoundedAlertBoxState extends State<RoundedAlertBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: 312,
      height: 39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
        ),
      ),
      child: MaterialButton(
        child: Text(
          'Simpan Pendaftaran',
          style: GoogleFonts.notoSans(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        ),
        onPressed: openAlertBox,
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.only(
                top: 11.0, right: 12, bottom: 11, left: 12),
            content: SizedBox(
              width: 290,
              height: 295,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        child: Image.asset(
                          "assets/Exit.png",
                          width: 16,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const DataMurid1(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Image.asset(
                    "assets/alert-jadwal.png",
                    width: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Data Murid Berhasil\nDiubah",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Silahkan kembali ke\nhalaman data murid",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF797F8F)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
