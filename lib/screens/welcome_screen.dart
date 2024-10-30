import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color lightBlue = Color(0xFFCBDCEB);
    Color darkBlue = Color(0xFF608BC1);

    return Scaffold(
      backgroundColor: lightBlue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menghapus gambar selamat datang
            SizedBox(height: 20),
            Text(
              'Mudahnya Akses Bantuan Sosial Dalam Genggaman',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: darkBlue),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Dapatkan informasi lengkap program bantuan sosial, daftar dengan mudah, dan dapatkan berbagai keuntungan.',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Daftar',
                style: TextStyle(color: Colors.black), 
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Masuk',
                style: TextStyle(color: Colors.black), // Ubah warna teks 'Masuk' menjadi hitam
              ),
            ),
          ],
        ),
      ),
    );
  }
}