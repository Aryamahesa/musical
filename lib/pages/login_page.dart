import 'package:flutter/material.dart';
import 'package:musical/components/button_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      // AppBar untuk menampilkan judul halaman
      // dan tombol kembali
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        elevation: 0,
        title: Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      // Padding untuk body konten
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // mengatur posisi konten agar memulai dari kiri
          children: [

            // judul email atau username
            Text(
              'Email or Username',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Container yang fungsinya untuk membungkus TextField
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
                bottom: 5,
              ), // Padding di sekitar TextField

              // warna latar belakang textfield
              decoration: BoxDecoration(
                color: const Color(0xFF323232),
                borderRadius: BorderRadius.circular(5),
              ),

              // TextField untuk input email atau username
              child: TextField(
                controller: emailController,
                style: const TextStyle(color: Colors.white, fontSize: 17),
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),

            // judul password
            Text(
              'Password',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Container yang fungsinya untuk membungkus TextField password
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
                bottom: 5,
              ),

              // Padding di sekitar TextField
              decoration: BoxDecoration(
                color: const Color(0xFF323232), // Warna latar belakang
                borderRadius: BorderRadius.circular(5), // Radius sudut
              ),

              child: ValueListenableBuilder(
                valueListenable: obscurePassword,
                builder: (context, value, child) {
                  return TextField(
                    controller: passwordController,
                    obscureText: value,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: InputBorder.none, // untuk menghilangkan border bawaan
                      suffixIcon: IconButton(
                        icon: Icon(
                          value ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          obscurePassword.value = !value;
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50),

            // mengatur posisi buttton agar berada di tengah
            // dan menambahkan jarak antara button dengan konten di atasnya
            // dengan tinggi 50
            Center(
              child: MyButton(
                text: 'Log In',
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),

    );
  }
}
