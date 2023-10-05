import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Hobi extends StatefulWidget {
  const Hobi({Key? key}) : super(key: key);
  @override
  State<Hobi> createState() => hobi();
}

class hobi extends State<Hobi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Daftar Situs Rekomendasi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Canva_icon_2021.svg/900px-Canva_icon_2021.svg.png",
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl('https://www.canva.com/');
                    },
                    child: Text('Canva'),
                  ),
                  SizedBox(height: 30),
                  Image.network(
                    "https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=940",
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl('https://www.netflix.com/');
                    },
                    child: Text('Netflix'),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
