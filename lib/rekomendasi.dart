import 'package:tugas_materi_1/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({Key? key}) : super(key: key);

  @override
  State<Rekomendasi> createState() => RecomendasiState();
}

class RecomendasiState extends State<Rekomendasi> {
  final Set<String> likedSites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Daftar Situs Rekomendasi",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: ListRekomendasi.length,
        itemBuilder: (context, index) {
          final RekomendasiList situs = ListRekomendasi[index];
          return InkWell(
            onTap: (){
              _launchUrl(situs.url);
            },
            child: Card(
              child: Row(
                children: [
                  // gambar
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Image.network(situs.imageUrl),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    // height: MediaQuery.of(context).size.height / 4,
                    child: Center(child: Text(situs.title)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    // height: MediaQuery.of(context).size.height / 4,
                    child: IconButton(
                      onPressed: () {
                        String msg = '';
                        setState(() {
                          situs.fav = !situs.fav;
                          if (situs.fav) {
                            msg = 'Berhasil Menambahkan ke Favorit';
                          } else {
                            msg = 'Berhasil Menghapus dari Favorit';
                          }
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(msg),
                          ),
                        );
                      },
                      icon: Icon((!situs.fav)
                          ? Icons.favorite_outline
                          : Icons.favorite,
                        color: (situs.fav) ? Colors.red : null,),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
