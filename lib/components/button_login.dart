import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector( // GestureDetector digunakan untuk mendeteksi sentuhan pada widget
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1DB954), // Warna hitam
          borderRadius: BorderRadius.circular(40), // border radius untuk button
        ),

        // padding
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // text
            Text(
              text,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0), // Warna hitam
                fontFamily: 'FranieText',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
