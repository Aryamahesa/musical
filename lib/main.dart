import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';
import 'pages/library_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'FranieText',
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      
      // routing jalur halaman
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/loginpage': (context) => const LoginPage(),
        '/menupage': (context) => const MenuPage(),
        '/librarypage': (context) => const LibraryPage(),
      },
    );
  }
}
