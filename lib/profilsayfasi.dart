import 'package:deneme/gonderikarti.dart';
import 'package:flutter/material.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResinLinki;
  final String profilResimLinki;

  const ProfilSayfasi(
      {Key key,
      this.isimSoyad,
      this.kullaniciAdi,
      this.kapakResinLinki,
      this.profilResimLinki})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://iaftm.tmgrup.com.tr/58a2aa/632/314/0/21/650/344?u=https://iftm.tmgrup.com.tr/2020/08/14/son-dakika-transfer-haberleri-iste-fenerbahcenin-gundemindeki-isimler-1597393910618.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(width: 2.0),
                    image: DecorationImage(
                        image: NetworkImage(profilResimLinki),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(kullaniciAdi,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black)),
                    Text(
                      "ysfcmlttn",
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Icon(Icons.add_circle),
                        onTap: () {},
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                sayac("Gönderi Sayısı", "141"),
                sayac("Takipçi", "15.7k"),
                sayac("Takip Edilenler", "500"),
              ],
            ),
          ),
          GonderiKarti(
            profilResimLinki:
                "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6",
            aciklama: "Açıklama Satırı",
            gecenSure: "10 dakika önce",
            gonderiResimLinki:
                "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6",
            isimSoyad: "Yusuf Sonakalan",
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sayi,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          baslik,
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]),
        ),
        SizedBox(
          height: 1.0,
        ),
      ],
    );
  }
}

/*// Navigator POP kullandığım için buraya appbar ekleyince otomatikmen geri dönüş işareti geldi. Ama biz kendi geri dönüş işaretimizi kullancaz. O yüzden Appbarı sildim.
      body: Center(
          child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Tamam pop ettik. Çık önümden"),
      )), */
