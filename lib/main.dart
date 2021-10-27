import 'package:flutter/material.dart';
import './widgetler/kullanici_kalemleri.dart';

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
          children: const [
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.red,
                child: Text('Grafik'),
                elevation: 5,
              ),
            ),
            KullaniciKalemleri()
          ]),
    );
  }
}
