import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tugas_materi_1/kelompok.dart';
import 'package:tugas_materi_1/stopwatch.dart';
import 'package:tugas_materi_1/rekomendasi.dart';
import 'package:tugas_materi_1/login.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Kelompok();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                            Icon(
                              Icons.format_list_bulleted_sharp,
                              size: 70,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              "Daftar Anggota Kelompok",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Hobi();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                            Icon(
                              Icons.link,
                              size: 70,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              "Daftar Situs Rekomendasi",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Countdown();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                            Icon(
                              Icons.timer,
                              size: 70,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              "Stopwatch",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: OutlinedButton(
                        onPressed: () {
                          String text = '';
                          text = 'Logout Berhasil';

                          SnackBar snackBar = SnackBar(content: Text(text));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                            Icon(
                              Icons.logout,
                              size: 70,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ])),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
