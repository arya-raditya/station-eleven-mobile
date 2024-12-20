import 'package:flutter/material.dart';
import 'package:station_eleven_m/screens/menu.dart';
import 'package:station_eleven_m/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Station Eleven',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Jual & Beli Keperluan Sehari-harimu di Station Eleven!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                ),
              ],
    ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Tambah Item'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductEntryFormPage(),
                    ));
              },
            ),
        ],
      ),
    );
  }
}