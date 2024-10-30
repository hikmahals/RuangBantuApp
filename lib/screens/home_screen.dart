import 'package:aplikasiruangbantu/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'program_detail_screen.dart'; // Import halaman detail program
import 'program_list_screen.dart'; // Import halaman daftar program

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Menyimpan index tab yang dipilih

  // Daftar halaman yang sesuai dengan tab
  final List<Widget> _pages = [
    HomeContent(), // Halaman Beranda
    ProgramListScreen(), // Halaman Program
    Container(), // Anda bisa menambahkan halaman Profil di sini
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Ubah tab yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'), // Judul yang sesuai
        backgroundColor: darkBlue,
      ),
      body: _pages[_selectedIndex], // Menampilkan halaman sesuai tab yang dipilih
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul Selamat Datang
          Text(
            'Selamat Datang, Hikmah!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          // Subjudul
          Text(
            'Temukan bantuan yang sesuai untuk kesejahteraanmu',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          // Kotak putih untuk informasi atau gambar
          Container(
            width: double.infinity,
            height: 140,
            color: Colors.white,
            child: Center(
              child: Text('Isi informasi atau gambar di sini'),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Rekomendasi Program Bantuan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          // Kotak-kotak putih untuk rekomendasi program
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              children: List.generate(2, (index) {
                return Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Bantuan ${index + 1}',
                            style: TextStyle(color: darkBlue, fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: darkBlue,
                          ),
                          onPressed: () {
                            // Arahkan ke halaman daftar program
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProgramDetailScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Lihat Detail',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          // Judul untuk informasi penting
          Text(
            'Informasi Penting',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          // Kotak putih untuk informasi penting
          Container(
            width: double.infinity,
            height: 140,
            color: Colors.white,
            child: Stack(
              children: [
                Center(
                  child: Text('Informasi penting di sini'),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: darkBlue,
                    ),
                    onPressed: () {
                      // Tambahkan logika untuk membaca selengkapnya
                    },
                    child: Text(
                      'Baca Selengkapnya',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}