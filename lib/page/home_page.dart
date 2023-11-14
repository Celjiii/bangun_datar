import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.white),
        ),
      ), //AppBar
        body : Column(

          children: [
            CustomMenu(imageAssets: "aset/20220419_105837gambar_bangun_datar_persegi.png", title: "Persegi"),
            CustomMenu(imageAssets: "aset/20220419_030155Jenis-jenis_Bangun_Datar_Segitiga.jpg", title: "Segitiga"),

          ],
     ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.green
      ),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
