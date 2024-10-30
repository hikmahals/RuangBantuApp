import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'home_screen.dart'; // Pastikan untuk mengimpor HomeScreen

class ProgramListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Program Bantuan'), // Judul AppBar
        backgroundColor: darkBlue, // Sesuaikan dengan warna yang diinginkan
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon panah untuk kembali
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()), // Arahkan ke HomeScreen
              (route) => false, // Hapus semua rute sebelumnya
            );
          },
        ),
      ),
      body: ListView(
        children: [
          // Contoh program dengan kotak panjang
          ProgramCard(
            imageAssetPath: 'assets/images/tunai.jpg', // Ganti dengan jalur gambar aset
            title: 'Bantuan Sosial Tunai (BST)',
            onPressed: () {
              Navigator.pushNamed(context, '/programDetail'); // Arahkan ke halaman detail
            },
          ),
          ProgramCard(
            imageAssetPath: 'assets/images/sembako.jpg', // Ganti dengan jalur gambar aset
            title: 'Bantuan Pangan',
            onPressed: () {
              Navigator.pushNamed(context, '/programDetail'); // Arahkan ke halaman detail
            },
          ),
        ],
      ),
    );
  }
}

// Widget untuk menampilkan kartu program
class ProgramCard extends StatelessWidget {
  final String imageAssetPath; // Ubah nama parameter
  final String title;
  final VoidCallback onPressed;

  ProgramCard({required this.imageAssetPath, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(imageAssetPath), // Ganti NetworkImage dengan AssetImage
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: darkBlue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                foregroundColor: Colors.black,
              ),
              onPressed: onPressed,
              child: Text('Lihat Detail'),
            ),
          ),
        ],
      ),
    );
  }
}