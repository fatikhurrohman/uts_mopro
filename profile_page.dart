import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Profil",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[200]!, Colors.blue[50]!], // Gradasi biru pudar
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              // Bagian atas profil (gambar dan nama pengguna)
              _profileHeader(),
              // Daftar menu
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    _menuItem(icon: Icons.person, title: 'Edit Profil'),
                    _menuItem(icon: Icons.lock, title: 'Ubah Password'),
                    _menuItem(icon: Icons.shopping_cart, title: 'Riwayat Pesanan'),
                    _menuItem(icon: Icons.favorite, title: 'Wishlist'),
                    _menuItem(icon: Icons.settings, title: 'Pengaturan'),
                    _menuItem(icon: Icons.info, title: 'Tentang Aplikasi'),
                    _menuItem(icon: Icons.help, title: 'Bantuan'),
                    _menuItem(icon: Icons.logout, title: 'Keluar'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
//fatik
  // Bagian atas profil
  Widget _profileHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/fatik.jpeg'), // Ganti dengan gambar Anda
          ),
          SizedBox(height: 16),
          Text(
            'Fatikhurrohman(4122042)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'Fatikhurrohman@gmail.com',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  // Item menu
  Widget _menuItem({required IconData icon, required String title}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(title, style: TextStyle(fontSize: 16)),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}
