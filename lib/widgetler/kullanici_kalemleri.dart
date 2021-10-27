import 'package:flutter/material.dart';
import 'yeni_kalem.dart';
import 'kalem_listesi.dart';
import '../modeller/kalem.dart';

class KullaniciKalemleri extends StatefulWidget {
  const KullaniciKalemleri({Key? key}) : super(key: key);

  @override
  _KullaniciKalemleriState createState() => _KullaniciKalemleriState();
}

class _KullaniciKalemleriState extends State<KullaniciKalemleri> {
  final List<Kalem> kullaniciKalemleri = [
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

  void yeniKalemEkleMetodu(String klmBaslik, double klmMiktar) {
    final yeniKlm = Kalem(
      baslik: klmBaslik,
      miktar: klmMiktar,
      tarih: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      kullaniciKalemleri.add(yeniKlm);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YeniKalem(yeniKalemEkleMetodu),
        KalemListesi(kullaniciKalemleri),
      ],
    );
  }
}
