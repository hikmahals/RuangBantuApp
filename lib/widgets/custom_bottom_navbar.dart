import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Program'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
      currentIndex: currentIndex, // Menunjukkan tab yang aktif
      selectedItemColor: Colors.blue, // Ubah warna sesuai keinginan
      onTap: onTap, // Menangani klik pada tab
    );
  }
}
