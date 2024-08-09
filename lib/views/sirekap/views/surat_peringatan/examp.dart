import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Examp_page extends StatefulWidget {
  const Examp_page({Key? key}) : super(key: key);

  @override
  State<Examp_page> createState() => _Examp_pageState();
}

class _Examp_pageState extends State<Examp_page> {
  String? selectedValue = '2023/2024';
  final List<String> items = ['2022/2023', '2023/2024'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: ListView(
        children: [
          // Header
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF158AD4), Color(0xFF39EADD)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 40,
                child: Icon(
                  Icons.account_circle,
                  size: 60,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),

          SizedBox(height: 60.0),

          // Main
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sidebar
              Container(
                width: 408,
                height: 774,
                margin: const EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 70,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 168),
                      Row(
                        children: [
                          Icon(Icons.monitor_rounded,
                              size: 50, color: Colors.black),
                          SizedBox(width: 10),
                          Text('Dashboard',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Row(
                        children: [
                          Icon(Icons.report_gmailerrorred_outlined,
                              size: 50, color: Colors.black),
                          const SizedBox(width: 10),
                          Text('Laporan dan Analitik',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down,
                              size: 50, color: Colors.black),
                          const SizedBox(width: 10),
                          Text('Kompensasi',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down,
                              size: 50, color: Colors.black),
                          const SizedBox(width: 10),
                          Text('Logout',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 156,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 70,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // sp1
                          Container(
                            margin: EdgeInsets.only(left: 33),
                            width: 85,
                            height: 85,
                            color: Color(0xFFFFE603),
                            child: Center(
                              child: Text(
                                'SP I',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 112,
                            height: 85,
                            color: Color(0xFFD9D9D9),
                            child: Center(
                              child: Text(
                                '10',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          // sp2
                          Container(
                            margin: EdgeInsets.only(left: 22),
                            width: 85,
                            height: 85,
                            color: Color(0xFFF77700),
                            child: Center(
                              child: Text(
                                'SP II',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 112,
                            height: 85,
                            color: Color(0xFFD9D9D9),
                            child: Center(
                              child: Text(
                                '21',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          // sp3
                          Container(
                            margin: EdgeInsets.only(left: 22),
                            width: 85,
                            height: 85,
                            color: Color(0xFFF70000),
                            child: Center(
                              child: Text(
                                'SP III',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 112,
                            height: 85,
                            color: Color(0xFFD9D9D9),
                            child: Center(
                              child: Text(
                                '5',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          // do
                          Container(
                            margin: EdgeInsets.only(left: 22),
                            width: 85,
                            height: 85,
                            color: Color(0xFF575757),
                            child: Center(
                              child: Text(
                                'DO',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 112,
                            height: 85,
                            color: Color(0xFFD9D9D9),
                            child: Center(
                              child: Text(
                                '0',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 40.0),

                    // Table
                    Container(
                      width: double.infinity,
                      height: 578,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 172, 105, 105),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 70,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 16.0, vertical: 8.0),
                      
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
