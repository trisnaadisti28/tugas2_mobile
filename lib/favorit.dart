import 'package:flutter/material.dart';
import 'package:tugas_materi_1/data.dart';
import 'package:url_launcher/url_launcher.dart';

class FavoritePage extends StatefulWidget {
  final List<RekomendasiList> favoritList;

  FavoritePage({required this.favoritList});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorit",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: widget.favoritList.length,
        itemBuilder: (context, index) {
          final RekomendasiList situs = widget.favoritList[index];
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
                            widget.favoritList.remove(situs);
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
      )


      // ListView.builder(
      //   itemCount: widget.favoritList.length,
      //   itemBuilder: (context, index) {
      //     final RekomendasiList situs = widget.favoritList[index];
      //     return ListTile(
      //       onTap: () {
      //         // Tambahkan logika untuk menavigasi ke halaman detail situs jika diperlukan.
      //         // _navigateToDetailPage(situs);
      //       },
      //       leading: Image.network(situs.imageUrl),
      //       title: Text(situs.title),
      //       subtitle: Text(situs.url),
      //     );
      //   },
      // ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}
