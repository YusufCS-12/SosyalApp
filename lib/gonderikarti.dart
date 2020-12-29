import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding Containerın kenarlardan yapışık olmaması için boşluk bırakıyor. Edge Insets all diyerek her kenardan 15 piksel uzaklaştırdık.
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Profil Fotoğrafı containerı
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.9),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),

                      // İsim ve Gönderi Zamanı Columnı
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Yusuf  Sonakalan",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Gönderi Zamanı",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // 3 nokta iconu
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Yorum Satırı",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/37872865_10216868553217090_5501817728530382848_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_ohc=ige1HKpCTZ8AX9Gilye&_nc_ht=scontent.fist4-1.fna&oh=805bfd1947b36b44515903933ad953c2&oe=600FC5F6",
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IkonluButonum(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  IkonluButonum(
                    ikonum: Icons.comment,
                    yazi: "Yorum Yap",
                    fonksiyonum: () {
                      print("Yorum Yap");
                    },
                  ),
                  FlatButton.icon(
                      onPressed: () {
                        print("Paylaş");
                      },
                      icon: Icon(Icons.share),
                      color: Colors.white,
                      label: Text(
                        "Paylaş",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;
  IkonluButonum({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
