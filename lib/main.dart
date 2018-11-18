import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Parsing Data + Card'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[
              new CardKu(ikon: Icons.home, teks: "Home", warna:Colors.black),
              new CardKu(ikon: Icons.star, teks: "Populer", warna:Colors.yellow),
              new CardKu(ikon: Icons.video_library, teks: "Video", warna:Colors.grey[500]),
              new CardKu(ikon: Icons.videogame_asset, teks: "Games", warna:Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}


class CardKu extends StatelessWidget {

  CardKu ({this.ikon, this.teks, this.warna});
  final IconData ikon;
  final String teks;
  final Color warna;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(5),
      child: new Card(
        child: new Column(

          children: <Widget>[

            new Icon(
              ikon,
              size: 80, 
              color: warna,),
            new Text(teks)

          ],
        )
        
      ),
    );
  }
}