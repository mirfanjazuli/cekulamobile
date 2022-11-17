import 'package:cekula/denda_keterlambatan/denda_keterlambatan1.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/keuangan/pembayaran_seragam.dart';
import 'package:cekula/peminjaman_buku/peminjaman_buku1.dart';
import 'package:cekula/sumbang_buku/sumbang_buku1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Keuangan1 extends StatelessWidget {
  Keuangan1({Key? key}) : super(key: key);

  final List laporan = [
    "Pembayaran Seragam",
    "Pembayaran Buku",
    "Pembayaran SPP",
    "Keuangan Murid"
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
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: const Icon(Icons.menu));
                          }),
                          Text(
                            "Keuangan Administrasi",
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
                            // Navigator.pushReplacement(
                            //   context,
                            //   PageRouteBuilder(
                            //     pageBuilder:
                            //         (context, animation1, animation2) =>
                            //             RiwayatPeminjaman(),
                            //     transitionDuration: Duration.zero,
                            //     reverseTransitionDuration: Duration.zero,
                            //   ),
                            // );
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
                Container(
                  padding: EdgeInsets.only(left: 24.0, right: 24, top: 0),
                  margin: EdgeInsets.only(top: 15),
                  color: Colors.white,
                  width: mediaQueryWidth,
                  height: 276,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: mediaQueryHeight * 0.025,
                    ),
                    itemCount: laporan.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 237, 237, 237),
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2)),
                              ]),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        laporan[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        size: 20),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  laporan[index] == "Pembayaran Seragam"
                                      ? PembayaranSeragam()
                                      : laporan[index] ==
                                              "Denda Keterlambatan & Hilang"
                                          ? DendaKeterlambatan1()
                                          : SumbangBuku1(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Keuangan.png",
                      width: 184,
                    ),
                    Text(
                      "Pilih pembayaran anda.",
                      style: GoogleFonts.notoSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF797f8F)),
                    )
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
