import 'package:flutter/material.dart';
import '../utils/colors.dart'; // Sesuaikan dengan file warna Anda

class RegistrationFormScreen extends StatefulWidget {
  @override
  _RegistrationFormScreenState createState() => _RegistrationFormScreenState();
}

class _RegistrationFormScreenState extends State<RegistrationFormScreen> {
  DateTime? _selectedDate; // Variabel untuk menyimpan tanggal yang dipilih
  final TextEditingController _dobController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}"; // Menampilkan tanggal dalam format DD/MM/YYYY
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pendaftaran Bantuan Sosial Tunai'),
        backgroundColor: darkBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Langkah 1 dari 4 - Informasi Pribadi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Nama Lengkap
            Text('Nama Lengkap'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nama lengkap Anda...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Nomor Induk Kependudukan (NIK)
            Text('Nomor Induk Kependudukan (NIK)'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan 16 digit nomor KTP Anda...',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            // Alamat Domisili
            Text('Alamat Domisili'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Jalan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'RT/RW',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Desa/Kelurahan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Kecamatan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Kabupaten/Kota',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Provinsi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Nomor Telepon
            Text('Nomor Telepon'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nomor telepon Anda...',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),

            // Tanggal Lahir
            Text('Tanggal Lahir'),
            TextField(
              controller: _dobController, // Menggunakan controller untuk mengatur teks
              decoration: InputDecoration(
                hintText: 'Atur tanggal lahir Anda...',
                border: OutlineInputBorder(),
              ),
              readOnly: true, // Menjadikan field ini hanya bisa dibaca
              onTap: () => _selectDate(context), // Memanggil date picker saat ditekan
            ),
            SizedBox(height: 16),

            // Jenis Kelamin
            Text('Jenis Kelamin'),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: Text('Pilih jenis kelamin Anda'),
              items: [
                DropdownMenuItem(value: 'Laki-laki', child: Text('Laki-laki')),
                DropdownMenuItem(value: 'Perempuan', child: Text('Perempuan')),
              ],
              onChanged: (value) {
                // Handle dropdown value changes
              },
            ),
            SizedBox(height: 16),

            // Tombol Selanjutnya
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                padding: EdgeInsets.symmetric(vertical: 16), // Menambah tinggi tombol
              ),
              onPressed: () {
                // Navigate to the next step
              },
              child: Center(
                child: Text(
                  'Selanjutnya',
                  style: TextStyle(color: Colors.black), // Mengubah warna teks tombol menjadi hitam
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}