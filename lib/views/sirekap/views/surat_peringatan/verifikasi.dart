import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verifikasi extends StatefulWidget {
  const Verifikasi({super.key});

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  void _showDetailSurat(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Container(
            width: 600,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail Surat Peringatan',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NIM: 3202210000',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    Text(
                      'Total Ketidakhadiran: 15 Jam',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Nama: Anggi Nabila Sulistianingsih',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Nomor Surat: SP3 / P1.B/3/6/2024',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                SizedBox(height: 20),
                Table(
                  children: [
                    TableRow(
                      children: [
                        Text('SURAT PERINGATAN', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('SEMESTER/KELAS', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('TANGGAL PENGAJUAN', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('SURAT PERNYATAAN', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('STATUS PERINGATAN', style: GoogleFonts.poppins(fontSize: 16)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('SP1', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('1A', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('21/03/2022', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('-', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('Selesai', style: GoogleFonts.poppins(fontSize: 16)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('SP2', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('3A', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('10/11/2023', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('surat_pernyataan.pdf', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('Selesai', style: GoogleFonts.poppins(fontSize: 16)),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('SP3', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('4A', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('06/07/2024', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('-', style: GoogleFonts.poppins(fontSize: 16)),
                        Text('Proses', style: GoogleFonts.poppins(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                    colors: [
                      Color(0xFF158AD4),
                      Color(0xFF39EADD),
                    ],
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

          //Main
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sidebar
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
                  padding:
                      const EdgeInsets.only(left: 30), // Padding untuk konten
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 168,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.monitor_rounded,
                            size: 50,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                          Text(
                            'Dashboard',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70), // Jarak antara baris ikon
                      Row(
                        children: [
                          Icon(
                            Icons.report_gmailerrorred_outlined,
                            size: 50,
                            color: Colors.black,
                          ),
                          const SizedBox(
                              width: 10), // Jarak antara ikon dan teks
                          Text(
                            'Laporan dan Analitik',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70), // Jarak antara baris ikon
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 50,
                            color: Colors.black,
                          ),
                          const SizedBox(
                              width: 10), // Jarak antara ikon dan teks
                          Text(
                            'Kompensasi',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70), // Jarak antara baris ikon
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 50,
                            color: Colors.black,
                          ),
                          const SizedBox(
                              width: 10), // Jarak antara ikon dan teks
                          Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 916,
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

                    //per total sp
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
                                  fontWeight: FontWeight.bold
                              ),
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
                                  fontWeight: FontWeight.bold
                              ),
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
                                  fontWeight: FontWeight.bold
                              ),
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
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 40.0),

                  Container(
                    width: 916,
                    height: 578,
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Text(
                                'Tahun',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    value: 2024,
                                    items: <int>[2024, 2023, 2022]
                                        .map((int value) {
                                      return DropdownMenuItem<int>(
                                        value: value,
                                        child: Text(value.toString()),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Kelas',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: 'C',
                                    items: <String>['A', 'B', 'C', 'D']
                                        .map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Semester',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 100,
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    value: 4,
                                    items: <int>[1, 2, 3, 4]
                                        .map((int value) {
                                      return DropdownMenuItem<int>(
                                        value: value,
                                        child: Text(value.toString()),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 200,
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Text((index + 1).toString()),
                                title: Text('Anggi Nabila Sulistianingsih'),
                                subtitle: Text('32022161086'),
                                trailing: ElevatedButton(
                                  onPressed: () => _showDetailSurat(context),
                                  child: Text('Lihat'),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: Verifikasi()));
