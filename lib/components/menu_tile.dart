import 'package:flutter/material.dart';
import 'package:musical/models/artist.dart';
// import 'package:musical/themes/colors.dart';

class ArtistTile extends StatelessWidget {
  const ArtistTile({super.key, required this.artist});
  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
        children: [
          // image
          Image.asset(artist.imagePath, height: 160, width: 160),

          const SizedBox(height: 10),
          // name artist and descriptio
          Row(
            children: [
              Text(
                artist.nameArtist,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),

              // icon verified
              Image.asset(
                'assets/images/icon/verified.png',
                width: 13,
                height: 13,
              ),
            ],
          ),

          const SizedBox(height: 2),
          // description
          Text(
            artist.description,
            style: TextStyle(color: Color(0xFFb3b3b3), fontSize: 10),
          ),
        ],
      ),
    );
  }
}
