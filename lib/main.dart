import 'package:flutter/material.dart';

void main() {
  List l1 = [
    "🇮🇳 INDIA",
    "🇺🇸 USA",
    "🇨🇳 CHINA",
    "🇷🇺 RUSIA",
    "🇩🇪 GERMANY",
    "🇨🇦 CANADA",
    "🇯🇵 JAPAN",
    "🇬🇧 UK",
  ];
  List c1 = [Colors.white, Colors.black, Colors.white, Colors.black, Colors.white, Colors.black, Colors.white, Colors.black];
  List c2 = [Colors.black, Colors.white, Colors.black, Colors.white, Colors.black, Colors.white, Colors.black, Colors.white];
  Color color1 = Colors.white;
  Color color2 = Colors.black;
  int i = 0;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("🏳 country list"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: l1
                .asMap()
                .entries
                .map((e) => Clist(l1[e.key],  c1[e.key], c2[e.key]))
                .toList(),
          ),
        ),
      ),
    ),
  );
}

Widget Clist(String data, Color c1, Color c2) {
  int a = 0;
  return Container(
    width: double.infinity,
    height: 100,
    color:c1,
    child: Center(
      child: Text(
        "$data",
        style: TextStyle(
          fontSize: 25,
          color: c2,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
