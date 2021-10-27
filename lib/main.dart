import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:harcama_gelir_gider/kalem.dart';
import './kalem.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  final List<Kalem> kalemler = [
    Kalem(
      id: 'k1',
      baslik: 'Kira Gideri',
      miktar: 33.5,
      tarih: DateTime.now(),
    ),
    Kalem(
      id: 'k2',
      baslik: 'Giyim Gideri',
      miktar: 110.5,
      tarih: DateTime.now(),
    ),
    Kalem(
      id: 'k3',
      baslik: 'Yemek Gideri',
      miktar: 55.5,
      tarih: DateTime.now(),
    ),
    Kalem(
      id: 'k4',
      baslik: 'Kırtasiye Gideri',
      miktar: 55.5,
      tarih: DateTime.now(),
    ),
  ];

  /* String baslikGirdisi = "";
  String miktarGirdisi = ""; */

  final baslikKontrolcusu = TextEditingController();
  final miktarKontrolcusu = TextEditingController();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5, title: const Text('Harcama Uygulaması')),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.red,
                child: Text('Grafik'),
                elevation: 5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(labelText: 'Başlık'),
                      controller: baslikKontrolcusu,
                      /* onChanged: (deger) {
                        baslikGirdisi = deger;
                      }, */
                    ),
                    TextField(
                      decoration: const InputDecoration(labelText: 'Miktar'),
                      controller: miktarKontrolcusu,
                      /* onChanged: (deger) {
                        miktarGirdisi = deger;
                      }, */
                    ),
                    TextButton(
                      child: const Text('Harcama Ekle'),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),

            //Kalemleri göstermek
            Column(
              children: kalemler.map((klm) {
                return Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          ' ₺ ' + klm.miktar.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            klm.baslik,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat('dd.MM.yyyy').format(klm.tarih),
                            style: const TextStyle(
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ]),
    );
  }
}
