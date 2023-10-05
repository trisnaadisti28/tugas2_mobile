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
          backgroundColor: Colors.blueGrey,
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
                  "\nAnda dapat melihat Data Anggota Kelompok kami dengan memilih menu Data Kelompok pada halaman Menu Utama.\n\n\n"),
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
                  "\t\t\t\t\t- Pada Menu Utama, tekan menu Stopwatch.\n"
                  "\t\t\t\t\t- Tekan tombol 'start' berwarna biru untuk memulai pengukuran waktu.\n"
                  "\t\t2. Menghitung waktu tanpa menghentikan penghitungan\n"
                  "\t\t\t\t\t- Tekan tombol tambah '+' berwarna biru untuk merekam waktu tanpa menghentikan penghitungan\n"
                  "\t\t3. Menghentikan stopwatch yang berjalan\n"
                  "\t\t\t\t\t- Untuk menghentikan stopwatch yang berjalan, tekan tombol 'jeda' berwarna merah\n"
                  "\t\t4. Mengulang waktu perhitungan\n"
                  "\t\t\t\t\t- Untuk mereset stopwatch, tekan tombol 'reset' berwarna hijau"),
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
                "Melihat Daftar Favorite\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                  "Anda dapat melihat Daftar Situs Favorite dengan memilih menu Daftar Favorite pada halaman Menu Utama\n\n"),
            ),
          ],
        ),
      ),
    );
  }
}
