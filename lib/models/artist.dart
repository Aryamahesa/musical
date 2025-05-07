class Artist {
  String nameArtist;
  String imagePath;
  String description;

  Artist({
    required this.imagePath,
    required this.nameArtist,
    required this.description,
  });

  String get name => nameArtist;
  String get image => imagePath;
  String get desc => description;
}

class ArtisData {
  static List<Artist> artistList = [
    Artist(
      imagePath: 'assets/images/songs/oasis.jpeg',
      nameArtist: 'Oasis',
      description: 'Artist',
    ),
    Artist(
      imagePath: 'assets/images/songs/GnR.jpeg',
      nameArtist: 'Gun & Roses',
      description: 'Artist',
    ),
    Artist(
      imagePath: 'assets/images/songs/oasis.jpeg',
      nameArtist: 'Oasis',
      description: 'Artist',
    ),
    Artist(
      imagePath: 'assets/images/songs/RIZZ.jpeg',
      nameArtist: 'RIZZ',
      description: 'Playlist',
    ),
  ];
}
