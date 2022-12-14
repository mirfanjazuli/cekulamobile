import 'package:cekula/screens/presensi_murid/presensi_murid4.dart';
import 'package:cekula/screens/radio/keuangan/radio_kelas_a.dart';
import 'package:cekula/screens/radio/keuangan/radio_kelas_h.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:intl/intl.dart';

class BuatPresensiMurid extends StatefulWidget {
  BuatPresensiMurid({Key? key}) : super(key: key);

  @override
  State<BuatPresensiMurid> createState() => _BuatPresensiMuridState();
}

class _BuatPresensiMuridState extends State<BuatPresensiMurid> {
  List<String> suggestons = [
    "Andhika Setiabudi",
    "Augusta Satrianto",
    "Balqis Yunanda",
    "Beni Mulyadi",
    "Bintang Sasya",
    "Bima Tantala",
    "Budiono Arya"
  ];

  bool formNamaMurid = false;

  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

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
                            height: 10,
                          ),
                          Text(
                            "Nama Murid",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            height: 40,
                            child: RawAutocomplete(
                              optionsBuilder:
                                  (TextEditingValue textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                } else {
                                  List<String> matches = <String>[];
                                  matches.addAll(suggestons);

                                  matches.retainWhere((s) {
                                    return s.toLowerCase().contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                  formNamaMurid = true;
                                  return matches;
                                }
                              },
                              onSelected: (String selection) {
                                print('You just selected $selection');
                              },
                              fieldViewBuilder: (BuildContext context,
                                  TextEditingController _controllerNamaMurid,
                                  FocusNode focusNode,
                                  VoidCallback onFieldSubmitted) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 3),
                                  child: TextField(
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF4D5569)),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Pilih nama murid',
                                      hintStyle: GoogleFonts.notoSans(
                                          color: const Color(0xFFA6AAB4),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    controller: _controllerNamaMurid,
                                    focusNode: focusNode,
                                    onSubmitted: (String value) {},
                                  ),
                                );
                              },
                              optionsViewBuilder: (BuildContext context,
                                  void Function(String) onSelected,
                                  Iterable<String> options) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Material(
                                          child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 14),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF7F9FC),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            60, 142, 142, 142),
                                                        blurRadius: 3.0,
                                                        offset:
                                                            Offset(0.0, 3.0),
                                                      ),
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      right: 48),
                                                  child: SingleChildScrollView(
                                                      child: Column(
                                                    children:
                                                        options.map((opt) {
                                                      return InkWell(
                                                          onTap: () {
                                                            onSelected(opt);
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          5),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    opt,
                                                                    style: GoogleFonts.notoSans(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Color(
                                                                            0xFF4D5569)),
                                                                  ),
                                                                ],
                                                              )));
                                                    }).toList(),
                                                  ))),
                                            ],
                                          ),
                                        ],
                                      )),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Pilih Kelas",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 24,
                            child: RadioKeuanganKelasA(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 24,
                            child: RadioKeuanganKelasH(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Waktu Presensi",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 44,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFedf1f7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: TextFormField(
                                // controller: dateinputmulai,
                                decoration: InputDecoration(
                                  hintText: 'HH/BB/TT',
                                  hintStyle: GoogleFonts.notoSans(
                                      color: const Color(0xFFA6AAB4)),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'assets/Calendar.png',
                                      width: 24,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: GoogleFonts.notoSans(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    print(pickedDate);
                                    String formattedDate =
                                        DateFormat('dd-MM-yy')
                                            .format(pickedDate);
                                    print(formattedDate);

                                    setState(() {
                                      dateinput.text = formattedDate;
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              ))),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      width: mediaQueryWidth,
                      height: 39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: formNamaMurid
                            ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
                              )
                            : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFD2D4DA), Color(0xFFD2D4DA)],
                              ),
                      ),
                      child: MaterialButton(
                        child: Text(
                          'Simpan Kehadiran',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          openAlertBox();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: bodyHeight * 0.13125,
                  width: mediaQueryWidth,
                  child: Stack(
                    children: [
                      AppBar(
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
                                      Navigator.pop(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation1,
                                                  animation2) =>
                                              PresensiMurid4(),
                                          transitionDuration: Duration.zero,
                                          reverseTransitionDuration:
                                              Duration.zero,
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Presensi Murid",
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
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: bodyHeight * 0.10625 - 1,
                child: Container(
                  width: mediaQueryWidth,
                  height:
                      (bodyHeight * 0.13125) - (bodyHeight * 0.10625 - 1) + 1,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                )),
          ],
        ),
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
            contentPadding: const EdgeInsets.all(0),
            content: Container(
              width: 290,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFBFBFB),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          icon: Icon(Icons.clear_rounded)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 44,
                          ),
                          Image.asset(
                            "assets/alert-jadwal.png",
                            height: 143,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Posting Jadwal Berhasil",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Silahkan kembali ke\nhalaman jadwal sekolah",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF797F8F),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 53,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
