import 'package:flutter/material.dart';
import 'gonderikarti.dart';

void main() {
  runApp(DenemeApp());
}

// Klasik Uygulama Başlangıcı

class DenemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Deniyorum",
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: AnaSayfa(),
    );
  }
}

// Home kısmını burada Oluşturduk
class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold ile Uygulamayı İskeletlere Ayırdık. mesela body kısmı gövedemiz oldu.
    return Scaffold(
      backgroundColor: Colors.grey[300],

      //AppBar Başlangıcı
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        //leading sol üst kısma drawerı açacak şekilde bir buton koyar. Drawer olması şart değil
        leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 32.0,
            color: Colors.black,
            //onPressed kısmında ise basılınca su damlacığı efekti verdirdik boş bir fonksiyon ile
            onPressed: () {}),
        title: Text(
          "Deniyoruz",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        //Bu kısımda appbarın son kısmı için oluşturduğumuz icon kısmı
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 32.0,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),

      //AppBar Bitişi

      //Hikayeler Kısmı body ile başladı.
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 5.0)
            ]),

            //Oluşturduğumuz Alana List ve Scrool horizontal ile kartlar ekledik
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //profil kartını method yaptık. Sürekli yazmak saçma olur. Lazım olunca Çağırdık. Parametre olarak da isim ve resimlinki değerlerini verdik
                profilKartiOlustur("Yusuf",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6"),
                profilKartiOlustur("Emre",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/13669844_1332428780117776_6760768401082988564_n.jpg?_nc_cat=102&ccb=2&_nc_sid=09cbfe&_nc_ohc=OnPSRJTHXb0AX_-GOqF&_nc_ht=scontent.fist4-1.fna&oh=273a22f8e1cde0f08175aaffc8411421&oe=600F180F"),
                profilKartiOlustur("Oğuz",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/14947432_103425963471949_6224541492872001496_n.jpg?_nc_cat=108&ccb=2&_nc_sid=09cbfe&_nc_ohc=7YxtIPVCTAsAX_I8CJQ&_nc_ht=scontent.fist4-1.fna&oh=b067b8382c0791d32249989935a4a290&oe=60128FA7"),
                profilKartiOlustur("Emrah",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/38391633_1285390698263371_8610980941067714560_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=xMHd4j7Jh7oAX-DIGpa&_nc_ht=scontent.fist4-1.fna&oh=12c93678a47da18151b3a77a88c4bf48&oe=601124B9"),
                profilKartiOlustur("Bilen",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/12274771_148165265540130_1457916951260487875_n.jpg?_nc_cat=109&ccb=2&_nc_sid=8bfeb9&_nc_ohc=heG3RVeJ0msAX-RpxMl&_nc_ht=scontent.fist4-1.fna&oh=2b2af5601d13a811d635c387296c97c7&oe=6012AF50"),
                profilKartiOlustur("Şeyma",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6"),
                profilKartiOlustur("Hilal",
                    "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6"),
              ],
            ),
          ),
          //sizedbox boşluk bırakmamıza yarıyor
          SizedBox(
            height: 10.0,
          ),

          //Gönderi Kartının zeminini Burada Oluşturduk
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          //Burada Gönderi Kartı zemini bitti
        ],
      ),
    );
  }

  //profilkartının özellikleri burada tanımlı. Burada yaptığımız şey refactor edip Widgeta dönüştürdük.

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: <Widget>[
          // Stack Columnun değişmesi ile oldu. Üst Üste Container yapacağımız Zaman Stack kullanıyoruz.
          Stack(
            //diğer containerı alignment ile üst sağa hizaladık
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        resimLinki,
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(width: 2.0, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            kullaniciAdi,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          )
        ],
      ),
    );
  }
}
