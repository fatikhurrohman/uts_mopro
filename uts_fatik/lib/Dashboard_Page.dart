import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'product_detail_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Row(
          children: [
            Image.asset(
              'images/ks.png',
              height: 40,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              "Aplikasi Gono - Gini",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Pesan ditekan")),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Keranjang ditekan")),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Baris 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProductCard(
                    context,
                    "Sewa",
                    "Komatsu",
                    'images/bego.jpg',
                    "Rp 200.000/jam",
                  ),
                  buildProductCard(
                    context,
                    "Sewa",
                    "Paket Osong - Osong",
                    'images/paket_osong-osong.jpg',
                    "Rp 200.000",
                  ),

                ],
              ),
              SizedBox(height: 8),
              // Baris 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProductCard(
                    context,
                    "Sewa",
                    "Becak lampu Jogja",
                    'images/becak_lampu.jpg',
                    "Rp 50.000/jam ",
                  ),
                  buildProductCard(
                    context,
                    "Sewa",
                    "Jetbus 3",
                    'images/jetbus.webp',
                    "Rp 150.000/jam",
                  ),
                ],
              ),
              SizedBox(height: 8),
              // Baris ketiga
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProductCard(
                    context,
                    "Sewa",
                    "Truk",
                    'images/truk.jpg',
                    "Rp 300,000",
                  ),
                  buildProductCard(
                    context,
                    "Mobil Keruk",
                    "Tanah aja rata apalagi masalalu",
                    'images/dowo.jpg',
                    "Rp 200.000",
                  ),
                ],
              ),
              SizedBox(height: 8),
              // Baris keempat
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProductCard(
                    context,
                    "Rumah",
                    "Bangunan langsung jadi",
                    'images/rumah.jpg',
                    "Rp 800.000.000",
                  ),
                  buildProductCard(
                    context,
                    "jual",
                    "Pom Pertamina",
                    'images/pom.jpg',
                    "Rp 400.000.000",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCard(
      BuildContext context,
      String name,
      String description,
      String imagePath,
      String price,
      ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Card(
        color: Colors.blue[50],
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                  productImage: imagePath,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
