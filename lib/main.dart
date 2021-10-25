import 'package:flutter/material.dart';
import 'package:harcama_gelir_gider/kalem.dart';
import './kalem.dart';

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

class MyHomePage extends StatelessWidget {
  final List<Kalem> kalemler = [
    Kalem(
      id: 'k1',
      baslik: 'yeni kitap',
      miktar: 33.5,
      tarih: DateTime.now(),
    ),
    Kalem(
      id: 'k2',
      baslik: 'giyim',
      miktar: 110.5,
      tarih: DateTime.now(),
    ),
    Kalem(
      id: 'k3',
      baslik: 'yemek',
      miktar: 55.5,
      tarih: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5, title: const Text('Harcama Uygulaması')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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

            //Kalemleri göstermek
            Column(
              children: kalemler.map((klm) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          klm.miktar.toString(),
                        ),
                      ),
                      Column(
                        children: [
                          Text(klm.baslik),
                          Text(
                            klm.tarih.toString(),
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
