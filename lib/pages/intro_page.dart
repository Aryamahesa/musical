import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musical/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Mengatur posisi konten
            
          children: [
            // padding untuk logo
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SvgPicture.asset(
                // gambar logo
                'assets/images/icon/musical-note.svg',
                width: 100,
                height: 100,
              ),
            ),

            const SizedBox(height: 50),

            // padding untuk deskripsi
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  // deskripsi musical
                  Text(
                    'Listen to Millions of songs Free on Musical.',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 80),

            // get started button
            MyButton(
              text: 'Get Started',
              onTap: () {
                // navigasi ke halaman login
                Navigator.pushNamed(context, '/loginpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
