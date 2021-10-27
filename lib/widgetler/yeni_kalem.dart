import 'package:flutter/material.dart';

class YeniKalem extends StatelessWidget {
  final Function klmEkle;
  final baslikKontrolcusu = TextEditingController();
  final miktarKontrolcusu = TextEditingController();
  YeniKalem(this.klmEkle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                klmEkle(
                  baslikKontrolcusu.text,
                  double.parse(miktarKontrolcusu.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
