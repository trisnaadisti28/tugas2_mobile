import 'dart:io';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Help',
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "\nBantuan Menggunakan Aplikasi\n",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "\nMelihat Data Kelompok",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  "\nAnda dapat melihat Data Anggota Kelompok 9 dengan memilih menu Data Kelompok pada halaman Menu Utama.\n\n\n"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Melihat Daftar Situs Rekomendasi\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  "Anda dapat melihat Daftar Situs rekomendasi dengan memilih menu Daftar Situs Rekomendasi pada halaman Menu Utama\n\n"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "\nMenggunakan Stopwatch\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  "Anda dapat mengukur waktu Anda sendiri dengan aplikasi Stopwatch ini.\n"
                  "\t\t1. Menghitung waktu maju dari nol\n"
                  "\t\t\t\t\t- Pada Menu Utama, ketuk menu Stopwatch.\n"
                  "\t\t\t\t\t- Ketuk Mulai.\n"
                  "\t\t2. Mengubah stopwatch yang berjalan\n"
                  "\t\t\t\t\t- Untuk menjeda stopwatch yang berjalan, ketuk Jeda\n"
                  "\t\t\t\t\t- Untuk mereset stopwatch, ketuk Jeda Lalu Reset."),
            )
          ],
        ),
      ),
    );
  }
}
