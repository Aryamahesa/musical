import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int _currentIndex = 1; // Indeks awal untuk Library

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // warna background dari halaman
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        // icon menu
        leading: const Icon(Icons.menu, color: Colors.white),

        // title
        centerTitle: true,
        title: const Text(
          'musical',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: const Center(
        child: Text(
          'Your Library is Empty....',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex, // Indeks item yang dipilih
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Perbarui indeks yang dipilih
          });

          if (index == 0) {
            Navigator.pushReplacementNamed(
              context,
              '/menupage',
            ); // Ganti halaman ke Home
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
