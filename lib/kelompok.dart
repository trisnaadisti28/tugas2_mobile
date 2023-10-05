import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tugas_materi_1/login.dart';

class Kelompok extends StatefulWidget {
  const Kelompok({Key? key}) : super(key: key);
  @override
  State<Kelompok> createState() => kelompok();
}

class kelompok extends State<Kelompok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Data Kelompok",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Kelompok 9",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 50),
                Image.asset(
                  "assets/images/Disti.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  '124200038 - Trisna Adisti',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/images/Hasna.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  '124200060 - Hasna Luthfiana Fadhila',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
