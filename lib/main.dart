import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universitas Teknologi Yogyakarta',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 26, 11, 234)),
        useMaterial3: true,
      ),
      home: const HomePage(), // Tidak perlu parameter 'title' di sini
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key}); // Hapus parameter 'title'
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text( // Perbaiki Text dengan huruf besar
          'Universitas Teknologi Yogyakarta',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menambahkan gambar profil
              CircleAvatar(
                radius: 100, // Ukuran lingkaran avatar
                backgroundImage: NetworkImage(
                'https://media.discordapp.net/attachments/1059467108687286273/1293184139410800650/ilham.jpg?ex=6707c495&is=67067315&hm=8f26ad977d362740f2ddb95dd8794dfe590e3a752a386f360fcfa33da0286286&=&format=webp&width=426&height=581',
              ),
            ),
            SizedBox(height: 40),
          Text(
            'Ilham Wisudawan\n5220411409\nInformatika 22', // Menampilkan NIM
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Ilham Wisudawan\n5220411409\nInformatika 22'),
         // Ganti log dengan debugPrint atau log dari 'dart:developer'
        child: const Icon(
          Icons.add_rounded, // Ganti Icon.add_rounded menjadi Icons.add_rounded
        ),
      ),
    );
  }
}
