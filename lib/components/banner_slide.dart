import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerSlide extends StatelessWidget {
  BannerSlide({super.key});

  // list untuk menampung gambar
  final List<String> imageList = [
    'assets/images/banner_event.jpg',
    'assets/images/banner_event1.jpg',
    'assets/images/banner_event2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding untuk jarak atas
      padding: const EdgeInsets.only(top: 20),
      child: CarouselSlider(
        // buat item carousel slider menggunakan List.generate untuk menyesuaikan jumlah gambar
        items: List.generate(
          imageList.length,
          (index) => Container(
            // Mengatur lebar container agar memenuhi layar
            width: double.infinity,
            decoration: BoxDecoration(
              // Memberikan border radius pada container
              borderRadius: BorderRadius.circular(10),
              // Menambahkan gambar sebagai background container
              image: DecorationImage(
                image: AssetImage(imageList[index]),
                fit:
                    BoxFit.cover, // Menyesuaikan gambar agar memenuhi container
              ),
            ),
          ),
        ),

        // onfigurasi untuk CarouselSlider
        options: CarouselOptions(
          height: 200.0, // Tinggi slider
          enlargeCenterPage: true, // Memperbesar item yang berada di tengah
          autoPlay: true, // Mengaktifkan autoplay
          aspectRatio: 16 / 9, // Rasio aspek slider
          autoPlayCurve: Curves.fastOutSlowIn, // Kurva animasi autoplay
          enableInfiniteScroll: true, // Mengaktifkan scroll tak terbatas
          autoPlayAnimationDuration: const Duration(
            milliseconds: 2000,
          ), // Durasi animasi autoplay
          viewportFraction: 0.8, // Proporsi tampilan item dalam viewport
        ),
      ),
    );
  }
}
