import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/peminjaman_buku/buat_peminjaman_buku.dart';
import 'package:cekula/screens/peminjaman_buku/edit_peminjaman_buku.dart';
import 'package:cekula/screens/peminjaman_buku/perpustakaan1.dart';
import 'package:cekula/screens/peminjaman_buku/riwayat_peminjaman_buku1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../jadwal_sekolah/buat_jadwal_sekolah.dart';

class PeminjamanBuku1 extends StatelessWidget {
  PeminjamanBuku1({Key? key}) : super(key: key);

  final List laporan = [
    "Peminjaman & Pengembalian Buku",
    "Denda Keterlambatan & Hilang",
    "Sumbang Buku",
  ];

  final List nama = [
    "Ahmad Jourji Zaidan",
    "Arsenio Hamas Syahid",
    "Daryl Mahardikasiandi",
    "Dini Anjani",
    "Muhammad Irfan Jazuli",
  ];

  final List tanggal = [
    "02/08/2022",
    "22/11/2022",
    "04/11/2022",
    "22/11/2022",
    "04/11/2022",
  ];

  final List jumlahBarang = [
    "1",
    "1",
    "2",
    "1",
    "3",
  ];

  final List namaBarang = [
    "Buku Matematika",
    "Buku Matematika",
    "Buku Novel",
    "Buku Matematika",
    "Buku Novel",
  ];

  final List kode = [
    "BB240001",
    "BV208923",
    "BV208924",
    "BV203465",
    "BV256924",
  ];

  final List status = [
    true,
    false,
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
        elevation: 0.0,
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
      drawer: const DrawerView(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: bodyHeight * 0.10625,
              child: AppBar(
                automaticallyImplyLeading: false,
                leadingWidth: 20,
                toolbarHeight: bodyHeight * 0.10625,
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Builder(builder: (context) {
                            return IconButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              Perpustakaan1(),
                                      transitionDuration: Duration.zero,
                                      reverseTransitionDuration: Duration.zero,
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.arrow_back));
                          }),
                          Text(
                            "Peminjaman Buku",
                            style: GoogleFonts.rubik(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          child: Image.asset(
                            'assets/History.png',
                            width: 24,
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        RiwayatPeminjamanBuku1(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                        ),
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
            Column(
              children: [
                SizedBox(
                  height: bodyHeight * 0.10625 - 1,
                ),
                Stack(
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      height: bodyHeight * (0.035) - 1,
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
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: mediaQueryWidth,
                      // height: bodyHeight * 0.07,
                      height: bodyHeight * 0.035,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(
                    color: Colors.white,
                    width: mediaQueryWidth,
                    height: bodyHeight,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 24,
                      ),
                      padding: const EdgeInsets.only(top: 5, bottom: 110),
                      itemCount: nama.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          width: mediaQueryWidth,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 237, 237, 237),
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2)),
                              ]),
                          // color: Colors.red,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        nama[index],
                                        style: GoogleFonts.notoSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF4D5569),
                                        ),
                                      ),
                                      Text(
                                        jumlahBarang[index],
                                        style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF4D5569),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    tanggal[index],
                                    style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF4D5569),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        namaBarang[index],
                                        style: GoogleFonts.notoSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF4D5569),
                                        ),
                                      ),
                                      status[index] == true
                                          ? Container(
                                              height: 24,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Color(0xFFE9FFE1),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Sudah Dikembalikan",
                                                  style: GoogleFonts.notoSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xFF73D552),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: 24,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Color(0xFFFDE1D5),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Belum Dikembalikan",
                                                  style: GoogleFonts.notoSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xFFED65622),
                                                  ),
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        kode[index],
                                        style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFA9C9FA),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Image.asset(
                                              'assets/Edit.png',
                                              width: 16,
                                            ),
                                            onTap: () {
                                              Navigator.pushReplacement(
                                                context,
                                                PageRouteBuilder(
                                                  pageBuilder: (context,
                                                          animation1,
                                                          animation2) =>
                                                      const EditPeminjamanBuku(),
                                                  transitionDuration:
                                                      Duration.zero,
                                                  reverseTransitionDuration:
                                                      Duration.zero,
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const RoundedAlertBox()
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 24,
              // top: bodyHeight * 0.88125,
              bottom: 24,
              child: InkWell(
                child: Container(
                  height: 48,
                  width: 46,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color(0xFF9FC3F9),
                        Color(0xFF83DBE0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Image.asset(
                    'assets/Plus.png',
                    scale: 1,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const BuatPeminjamanBuku(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
              ),
            ),
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
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Image.asset(
        'assets/Delete.png',
        width: 16,
      ),
      onPressed: openAlertBox,
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
                                  PeminjamanBuku1(),
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
                    "assets/alert-yakin.png",
                    width: 108,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Yakin Ingin Menghapus?",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 219,
                    height: 32,
                    child: OutlinedButton(
                      child: const Text('Ya'),
                      style: OutlinedButton.styleFrom(
                        primary: const Color(0xFF9FC3F9),
                        side: const BorderSide(
                            color: Color(0xFF9FC3F9), width: 1),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
