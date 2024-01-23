import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            "GÜNÜN FALI",
            style: TextStyle(
              backgroundColor: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: falci(),
      ),
    );
  }
}
class falci extends StatefulWidget {
  const falci({super.key});

  @override
  State<falci> createState() => _falciState();
}

class _falciState extends State<falci> {
int askNo=1;
int paraNo=1;
int tavsiyeNo=1;
  List<String> askDurumu=[
    "AŞIKSINIZ",
    "AŞK BEKLENİYOR",
    "AŞK DURUMU KARIŞIK",
    "AŞK DURUMU OLDU",
  ];
List<String> paraDurumu=[
  "PARA GELİYOR",
  "PARA BEKLENİYOR",
  "PARA DURUMU KARIŞIK",
  "PARASIZSIN",
];
List<String> gunlukTavsiye=[
  "POZİTİF OL",
  "GÜL",
  "EĞLEN",
  "GEZ",
];
void askGetir(){
  setState(() {
    askNo=Random().nextInt(4)+1;
    var sonuc= askDurumu[askNo-1];
    print(sonuc);
    Text(sonuc);
  });
}
void paraGetir(){
  setState(() {
    paraNo=Random().nextInt(4)+1;
    var sonuc= paraDurumu[paraNo-1];
    print(sonuc);
    Text(sonuc);
  });
}
void tavsiyeGetir(){
  setState(() {
    tavsiyeNo=Random().nextInt(4)+1;
    var sonuc= gunlukTavsiye[tavsiyeNo-1];
    print(sonuc);
    Text(sonuc);
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Image.asset("assets/falci.jpg"),
            SizedBox(
              height: 15.0,
            ),
            Card(
              child: ElevatedButton(
                child: Text("AŞK DURUMU"),
                onPressed: askGetir,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Card(
              child: ElevatedButton(
                child: Text("PARA DURUMU"),
                onPressed: paraGetir
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Card(
              child: ElevatedButton(
                child: Text("GÜNLÜK TAVSİYE"),
                onPressed: tavsiyeGetir
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text("TIKLA BUTONA GELSİN",style: TextStyle(fontWeight: FontWeight.bold),),
            Divider(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
