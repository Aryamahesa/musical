import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1DB954), // Warna hijau
          borderRadius: BorderRadius.circular(40), // border radius untuk button
        ),

        // padding untuk text
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text, 
              style: TextStyle(
                color: const Color.fromARGB(255, 30, 30, 30),
                fontSize: 15, 
                fontWeight: FontWeight.bold
              )
            ),

            const SizedBox(width: 10),

            // icon panah
            Icon(
              Icons.arrow_forward, 
              color: const Color.fromARGB(255, 30, 30, 30),
            ),
          ],
        ),
      ),
    );
  }
}
