import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Logika sederhana untuk mengecek keberhasilan login
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Tampilkan Snackbar sebagai notifikasi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login Sukses!'),
          duration: Duration(seconds: 2), // Durasi tampilnya Snackbar
        ),
      );

      // Tunggu beberapa detik sebelum mengarahkan ke halaman home
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushNamed(context, '/home');
      });
    } else {
      // Tampilkan pesan kesalahan jika input tidak valid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Mohon isi email dan kata sandi.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

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
            SizedBox(height: 20),
            Text(
              'Selamat Datang di RuangBantu!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: darkBlue),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Kata Sandi',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Tambahkan logika lupa kata sandi
                },
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(color: darkBlue),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: _login, // Panggil fungsi login
              child: Text(
                'Masuk',
                style: TextStyle(color: Colors.black), 
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Belum Memiliki Akun? Daftar',
                style: TextStyle(color: darkBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
