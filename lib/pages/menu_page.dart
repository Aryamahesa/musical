import 'package:flutter/material.dart';
import 'package:musical/components/menu_tile.dart';
import 'package:musical/components/song_tile.dart';
import 'package:musical/components/banner_slide.dart';
import 'package:musical/models/artist.dart';
import 'package:musical/models/song.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // warna background dari halaman
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        // icon menu
        leading: Icon(Icons.menu, color: Colors.white),

        // // title
        centerTitle: true,
        title: Text(
          'musical',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // banner slide
            BannerSlide(), // panggil widget yang sudah dibuat

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF323232),
                  borderRadius: BorderRadius.circular(5),
                ), // search bar

                child: TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none, // menghilangkan border
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search...',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // title popular artist
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Popular Artist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/icon/trend.png',
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // title list artist
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: null,
                itemBuilder: (context, index) {
                  final artist =
                      ArtisData.artistList[index % ArtisData.artistList.length];
                  return ArtistTile(artist: artist);
                },
              ),
            ),
            const SizedBox(height: 10),

            // Top Songs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Top Songs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // list song
            ListView.builder(
              // shrinkWrap digunakan untuk menyesuaikan ukuran konten
              shrinkWrap: true,
              physics:
                  // Nonaktifkan scroll ListView
                  const NeverScrollableScrollPhysics(),
              itemCount: SongsData.songList.length, // menampilkan jumlah lagu
              itemBuilder: (context, index) {
                // menampilkan lagu sesuai index
                return SongTile(
                  songs: SongsData.songList[index],
                  index: index + 1,
                );
              },
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/librarypage');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
