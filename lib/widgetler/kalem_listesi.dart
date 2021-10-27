import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../modeller/kalem.dart';

class KalemListesi extends StatelessWidget {
  final List<Kalem> kalemler;

  // ignore: use_key_in_widget_constructors
  const KalemListesi(this.kalemler);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
