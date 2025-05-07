class Songs {
  String imagePath;
  String nameSongs;
  String description;
  String nameArtist;

  Songs({
    required this.imagePath,
    required this.nameSongs,
    required this.description,
    required this.nameArtist,
  });

  String get image => imagePath;
  String get name => nameSongs;
  String get desc => description;
  String get artist => nameArtist;
}

class SongsData {
  static List<Songs> songList = [
    Songs(
      imagePath: 'assets/images/songs/wonderwall.jpeg',
      nameSongs: 'Wonderwall',
      description: 'Song',
      nameArtist: 'Oasis',
    ),
    Songs(
      imagePath: 'assets/images/songs/all_around_the_world.jpeg',
      nameSongs: 'All Around the World',
      description: 'Song',
      nameArtist: 'Oasis',
    ),
    Songs(
      imagePath: "assets/images/songs/if_i_had_a_gun.jpeg",
      nameSongs: "if i had a gun",
      description: "Song",
      nameArtist: "Noel Gallagher's High-Flying Birds",
    ),
  ];
}