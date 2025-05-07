import 'package:flutter/material.dart';
import 'package:musical/models/song.dart';

class SongTile extends StatelessWidget {
  const SongTile({super.key, required this.songs, required this.index});

  final Songs songs;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Row(
        children: [
          // Nomor urut dengan lebar tetap
          SizedBox(
            width: 25, // Atur lebar tetap untuk nomor
            child: Text(
              '$index',
              textAlign: TextAlign.left, // Pusatkan teks di dalam SizedBox
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Gambar lagu
          Image.asset(songs.imagePath, height: 50),

          const SizedBox(width: 10),

          // Informasi lagu
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nama lagu
              Text(
                songs.nameSongs,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),

              const SizedBox(height: 5),

              // Row untuk menampilkan keterangan lagu dan nama artis
              Row(
                children: [
                  // keterangan lagu
                  Text(
                    songs.description,
                    style: const TextStyle(
                      color: Color(0xFFb3b3b3),
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(width: 1), // lebar jarak antar konten
                  // gambar titik atau icon titik
                  Image.asset(
                    'assets/images/icon/dot.png',
                    width: 13,
                    height: 13,
                  ),
                  const SizedBox(width: 1), // lebar jarak antar konten
                  // nama artis
                  Text(
                    songs.nameArtist,
                    style: const TextStyle(
                      color: Color(0xFFb3b3b3),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
