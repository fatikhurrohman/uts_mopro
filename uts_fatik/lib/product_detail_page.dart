import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productImage;


  ProductDetailPage({required this.productImage});

  @override
  Widget build(BuildContext context) {

    final productDetails = _getProductDetails(productImage);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Detail Produk",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[50]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      productImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                Text(
                  productDetails['title'] ?? "Produk Tidak Diketahui",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),

                Text(
                  "Harga: ${productDetails['price'] ?? "N/A"}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),

                Text(
                  "Deskripsi Produk:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  productDetails['description'] ?? "Tidak ada deskripsi.",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),

                Text(
                  "Spesifikasi Produk:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  productDetails['specifications'] ?? "Tidak ada spesifikasi.",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Checkout berhasil!")),
                    );
                  },
                  child: Text(
                    'Checkout',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Map<String, String> _getProductDetails(String imagePath) {
    switch (imagePath) {
      case 'images/bego.jpg':
        return {
          'title': 'Komatsu',
          'price': 'Rp 200,000/jam',
          'description': 'Komatsu adalah alat berat berkualitas tinggi yang dirancang untuk berbagai kebutuhan konstruksi. Cocok untuk proyek besar seperti pertambangan, pembangunan infrastruktur, dan pekerjaan kehutanan.',
          'specifications': '''
            - Include Oprator alat berat 
            - belum termasuk biaya pembawaan alat berat
            - Berat Operasi: 20 ton
            - Daya Mesin: 150 HP
            - Penggunaan: Konstruksi, pertambangan, kehutanan
          '''
        };
      case 'images/paket_osong-osong.jpg':
        return {
          'title': 'Paket Osong-Osong',
          'price': 'Rp 200,000',
          'description': 'Kami menawarkan paket kontruksi yanglengkap dengan harga terjangkau',
          'specifications': '''
            - Fasilitas: Buldoser, Tangan Komatsu, dan Truk pengangkut barang. 
            - 3 unit alat berat 
          '''
        };
      case 'images/becak_lampu.jpg':
        return {
          'title': 'Becak Lampu Jogja',
          'price': 'Rp 100,000/jam',
          'description': 'Becak lampu dengan desain unik yang memadukan seni tradisional dan modern. Sempurna untuk menikmati malam Jogja yang romantis.',
          'specifications': '''
            - Dekorasi: Lampu LED berwarna-warni
            - Kapasitas: 2-3 orang
            - Durasi Sewa: 1 jam
            - Lokasi: Malioboro, Yogyakarta
            - Tenaga Penggerak: Manual (dipancal)
          '''
        };
      case 'images/jetbus.webp':
        return {
          'title': 'Jetbus 3',
          'price': 'Rp 150,000/jam',
          'description': 'Jetbus 3 menawarkan kenyamanan maksimal untuk perjalanan jauh dengan desain modern dan fitur-fitur canggih.',
          'specifications': '''
            - Kapasitas Penumpang: 45 orang
            - Fasilitas: AC alami, TV, port USB
            - Mesin: Diesel 2500 HP
            - Dimensi: Panjang 12 meter, lebar 2,5 meter
            - Kecepatan Maksimal: 320 km/jam
          '''
        };
      case 'images/truk.jpg':
        return {
          'title': 'Truk',
          'price': 'Rp 300,000',
          'description': 'Truk tangguh yang dirancang untuk kebutuhan logistik berat. Cocok untuk pengangkutan barang di proyek besar.',
          'specifications': '''
            - Jenis: Truk Matrial
            - Kapasitas Muatan: 10 ton
            - Mesin: Diesel 20000 HP
            - Dimensi Bak: Panjang 6 meter, lebar 2,5 meter
            - Penggunaan: Logistik, konstruksi, pengangkutan barang berat,siap mengangkut beban keluarga 
          '''
        };
      case 'images/dowo.jpg':
        return {
          'title': 'Mobil Keruk',
          'price': 'Rp 200,000',
          'description': 'Mobil keruk yang dirancang untuk pekerjaan tanah berat dengan efisiensi tinggi. Ideal untuk proyek konstruksi besar.',
          'specifications': '''
            - Tipe: Bulldozer
            - Lebar Blade: 3 meter
            - Kapasitas Tangki: 150 liter
            - Daya Mesin: 180 HP
            - Fungsi Utama: Meratakan tanah, memindahkan material, meratakan kedudukan 
          '''
        };
      case 'images/rumah.jpg':
        return {
          'title': 'Rumah',
          'price': 'Rp 800,000.000',
          'description': 'Rumah modern dengan desain minimalis dan lokasi strategis. Siap huni dan cocok untuk investasi jangka panjang.',
          'specifications': '''
            - Luas Bangunan: 120 m²
            - Luas Tanah: 200 m²
            - Jumlah Kamar Tidur: 3
            - Jumlah Kamar Mandi: 2
            - Fasilitas Tambahan: istri muda, Garasi, taman, dapur modern
          '''
        };
      case 'images/pom.jpg':
        return {
          'title': 'Pom Pertamina',
          'price': 'Rp 400,000,000',
          'description': 'Pom Pertamina dengan fasilitas lengkap dan lokasi strategis. Cocok untuk pengusaha di sektor bahan bakar.',
          'specifications': '''
            - Jenis BBM: Pertalite, Pertamax, Solar
            - Jumlah Dispenser: 6 nozzle
            - Kapasitas Tangki BBM: 20.000 liter
            - Fasilitas Tambahan: Minimarket, toilet umum, area parkir luas
            - Lokasi: unipdu peterongan jombang
          '''
        };
      default:
        return {
          'title': 'Produk Tidak Diketahui',
          'price': 'N/A',
          'description': 'Tidak ada deskripsi untuk.',
          'specifications': 'Tidak ada spesifikasi.'
        };
    }
  }
}
