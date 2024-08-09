import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampPage extends StatefulWidget {
  const ExampPage({Key? key}) : super(key: key);

  @override
  State<ExampPage> createState() => _ExampPageState();
}

class _ExampPageState extends State<ExampPage> {
  String? tahunValue = '2022/2023';
  String? kelasValue = 'A';
  String? smtValue = '1';

  final List<String> tahunItems = ['2022/2023', '2023/2024', '2024/2025'];
  final List<String> kelasItems = ['A', 'B', 'C', 'D', 'E'];
  final List<String> smtItems = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Adjust layout based on screen width
          if (constraints.maxWidth > 1200) {
            return buildWideLayout();
          } else if (constraints.maxWidth > 800) {
            return buildMediumLayout();
          } else {
            return buildNarrowLayout();
          }
        },
      ),
    );
  }

  // Wide layout for large screens
  Widget buildWideLayout() {
    return ListView(
      //padding: const EdgeInsets.symmetric(horizontal: 50),
      children: [
        // Header
        buildHeader(),

        //const SizedBox(height: 60.0),
        
        // Main content
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: buildSidebar(),
              flex: 1,
            ),
            const SizedBox(width: 20), // Space between sidebar and main content
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSummarySection(),
                  const SizedBox(height: 40.0),
                  buildTableSection(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Medium layout for medium screens
  Widget buildMediumLayout() {
    return ListView(
      //padding: const EdgeInsets.symmetric(horizontal: 50),
      children: [
        // Header
        buildHeader(),

        //const SizedBox(height: 60.0),

        // Main content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSidebar(),
            // const SizedBox(height: 20.0),
            buildSummarySection(),
            const SizedBox(height: 40.0),
            buildTableSection(),
          ],
        ),
      ],
    );
  }

  // Narrow layout for small screens
  Widget buildNarrowLayout() {
    return ListView(
      //padding: const EdgeInsets.symmetric(horizontal: 50),
      children: [
        // Header
        buildHeader(),

        //const SizedBox(height: 60.0),

        // Main content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSidebar(),
            // const SizedBox(height: 20.0),
            buildSummarySection(),
            // const SizedBox(height: 40.0),
            buildTableSection(),
          ],
        ),
      ],
    );
  }

  // Build the header section
  Widget buildHeader() {
    return Stack(
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
    );
  }

  // Build the sidebar
  Widget buildSidebar() {
    return Container(
      width: double.infinity,
      height: 774,
      margin: EdgeInsets.fromLTRB(50, 50, 30, 50),
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
        padding: const EdgeInsets.only(left: 30), // Padding for content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 168),
            buildSidebarRow(Icons.monitor_rounded, 'Dashboard'),
            const SizedBox(height: 70), // Space between rows
            buildSidebarRow(Icons.report_gmailerrorred_outlined, 'Laporan dan Analitik'),
            const SizedBox(height: 70), // Space between rows
            buildSidebarRow(Icons.keyboard_arrow_down, 'Kompensasi'),
            const SizedBox(height: 70), // Space between rows
            buildSidebarRow(Icons.keyboard_arrow_down, 'Logout'),
          ],
        ),
      ),
    );
  }

  // Build a row for the sidebar
  Widget buildSidebarRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        const SizedBox(width: 10), // Space between icon and text
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.black),
        ),
      ],
    );
  }

  // Build the summary section
  Widget buildSummarySection() {
    return Container(
      width: double.infinity,
      height: 156,
      margin: EdgeInsets.fromLTRB(0, 50, 50, 0),
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
          buildSummaryBox('SP I', '10', const Color(0xFFFFE603)),
          buildSummaryBox('SP II', '21', const Color(0xFFF77700)),
          buildSummaryBox('SP III', '5', const Color(0xFFF70000)),
          buildSummaryBox('DO', '0', const Color(0xFF575757)),
        ],
      ),
    );
  }

  // Build a box for the summary section
  Widget buildSummaryBox(String label, String value, Color color) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 33),
          width: 85,
          height: 85,
          color: color,
          child: Center(
            child: Text(
              label,
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
          color: const Color(0xFFD9D9D9),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  // Build the table section
  Widget buildTableSection() {
    return Container(
      width: double.infinity,
      height: 578,
      margin: EdgeInsets.fromLTRB(0, 0, 50, 50),
      padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
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
      child:Column(
        children: [
          Row(
              children: [
                buildDropdown('Tahun', tahunValue, tahunItems,
                    (String? newValue) {
                  setState(() {
                    tahunValue = newValue!;
                  });
                }),
                const SizedBox(width: 30),
                buildDropdown('Kelas', kelasValue, kelasItems,
                    (String? newValue) {
                  setState(() {
                    kelasValue = newValue!;
                  });
                }),
                const SizedBox(width: 30),
                buildDropdown('Semester', smtValue, smtItems,
                    (String? newValue) {
                  setState(() {
                    smtValue = newValue!;
                  });
                }),
                const SizedBox(width: 30),
                buildSearchBox(),
              ],
            ),

          SizedBox(height: 10),
          buildDataTabel(),
        ],
      ),
    );
  }

  // Build a dropdown menu
  Widget buildDropdown(String label, String? value, List<String> items, ValueChanged<String?> onChanged) {
    return Row(
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(fontSize: 16),
          
        ),
        const SizedBox(width: 10),
        Container(
          width: 115,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: value,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  // Build the search box
  Widget buildSearchBox() {
    return Container(
      width: 200,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildDataTabel() {
    return Container(
      width: double.infinity,
      height: 578,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.2),
        //     spreadRadius: 5,
        //     blurRadius: 70,
        //     offset: const Offset(0, 5),
        //   ),
        // ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('NO')),
                DataColumn(label: Text('Nama Mahasiswa')),
                DataColumn(label: Text('NIM')),
                DataColumn(label: Text('Kelas')),
                DataColumn(label: Text('Semester')),
                DataColumn(label: Text('Angkatan')),
                DataColumn(label: Text('Bulan')),
                DataColumn(label: Text('Total')),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('1')),
                    DataCell(Text('Siti Sabrina Oktavia')),
                    DataCell(Text('3202216002')),
                    DataCell(Text('C')),
                    DataCell(Text('4')),
                    DataCell(Text('22')),
                    DataCell(Text('2023-2024')),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('2')),
                    DataCell(Text('Rizwanda')),
                    DataCell(Text('3202216001')),
                    DataCell(Text('C')),
                    DataCell(Text('4')),
                    DataCell(Text('22')),
                    DataCell(Text('2023-2024')),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('3')),
                    DataCell(Text('Yajid')),
                    DataCell(Text('3202216004')),
                    DataCell(Text('C')),
                    DataCell(Text('4')),
                    DataCell(Text('22')),
                    DataCell(Text('2023-2024')),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('4')),
                    DataCell(Text('Haykal')),
                    DataCell(Text('3202216006')),
                    DataCell(Text('C')),
                    DataCell(Text('4')),
                    DataCell(Text('22')),
                    DataCell(Text('2023-2024')),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('5')),
                    DataCell(Text('Lalu Nicholas')),
                    DataCell(Text('3202216007')),
                    DataCell(Text('C')),
                    DataCell(Text('4')),
                    DataCell(Text('22')),
                    DataCell(Text('2023-2024')),
                    DataCell(Text('40')),
                  ],
                ),
              ],

              //untuk tampilkan data secara otomatis
              // rows: data.map((student) {
              //   return DataRow(
              //     cells: <DataCell>[
              //       DataCell(Text(student['id'].toString())),
              //       DataCell(Text(student['name'].toString())),
              //       DataCell(Text(student['nim'].toString())),
              //       DataCell(Text(student['kelas'].toString())),
              //       DataCell(Text(student['semester'].toString())),
              //       DataCell(Text(student['angkatan'].toString())),
              //       DataCell(Text(student['bulan'].toString())),
              //       DataCell(Text(student['total'].toString())),
              //     ],
              //   );
              // }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}