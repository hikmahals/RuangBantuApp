import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ProgramDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Program Bantuan'),
        backgroundColor: darkBlue,
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul di tengah
            Center(
              child: Text(
                'Bantuan Sosial Tunai (BST)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Warna hitam untuk judul
                ),
              ),
            ),
            SizedBox(height: 8),

            // Kotak gambar
            Container(
              height: 200, // Tinggi kotak gambar
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/tunai.jpg'), // Ganti dengan path gambar di aset
                  fit: BoxFit.cover, // Mengisi kotak dengan gambar
                ),
              ),
            ),
            SizedBox(height: 16),

            // Judul Deskripsi
            Text(
              'Deskripsi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Deskripsi
            Text(
              'Bantuan tunai untuk keluarga yang terdampak secara ekonomi, khususnya yang tidak terdaftar dalam DTKS.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Judul Kriteria Penerima Bantuan
            Text(
              'Kriteria Penerima Bantuan:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Deskripsi Kriteria
            Text(
              '- Status Ekonomi: Pendapatan di bawah garis kemiskinan nasional, tanpa penghasilan tetap.\n'
              '- Status Pekerjaan: Bekerja di sektor informal atau kehilangan sumber penghasilan.\n'
              '- Kondisi Keluarga: Menanggung anak bersekolah, lanjut usia, atau anggota keluarga dengan kondisi kesehatan yang membutuhkan perawatan khusus.\n'
              '- Dokumen Pendukung: Melampirkan SKTM dari RT/RW atau kelurahan, Kartu Keluarga (KK), dan KTP.\n'
              '- Keanggotaan Non-DTKS: Bukan anggota DTKS dan belum menerima bantuan serupa dalam 6 bulan terakhir.\n'
              '- Kondisi Khusus: Terdampak bencana alam, krisis ekonomi, atau pandemi, serta menghadapi kebutuhan mendesak (misalnya biaya pendidikan atau medis).\n'
              '- Kondisi Sosial-Ekonomi Terbatas: Tidak memiliki aset produktif bernilai tinggi (misal kendaraan lebih dari satu atau properti komersial).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Tombol Daftar
            Center( // Menggunakan Center untuk menempatkan tombol di tengah
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkBlue,
                  foregroundColor: Colors.black, // Mengubah warna teks tombol menjadi hitam
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Mengatur padding untuk memperbesar tombol
                  textStyle: TextStyle(fontSize: 18), // Mengubah ukuran teks tombol
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/registrationForm');
                },
                child: Text('Daftar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
