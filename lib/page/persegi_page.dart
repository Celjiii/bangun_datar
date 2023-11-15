import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  get centerTitle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Persegi Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "aset/20220419_105837gambar_bangun_datar_persegi.png",
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Persegi"),
            ),
            Text(
                "persegi itu adalah bangun datar yang dibentuk oleh empat sisi yang sama panjangnya"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: ((value) {
                  _persegiController.sisi = int.parse(value);
                }),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Sisi",
                    hintText: "Masukkan Sisi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                      onPressed: () {
                        _persegiController.hitungLuas();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        textStyle: TextStyle(
                          fontSize: 16 )),
                      child: Text("Hitung Luas")),

                  ElevatedButton(
                      onPressed: () {
                        _persegiController.hitungKeliling();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          textStyle: TextStyle(
                              fontSize: 16 )),
                      child: Text("Hitung Keliling")),
                ],
              ),
            ),
            Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: Colors.green))),
          ],
        ),
      ),
    );
  }
}
