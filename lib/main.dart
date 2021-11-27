import 'package:flutter/material.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/screen/homescreen.dart';

void main() {
  runApp(Jugaadhai());
}

class Jugaadhai extends StatefulWidget {
  const Jugaadhai({Key? key}) : super(key: key);

  @override
  _jugaadhaiState createState() => _jugaadhaiState();
}

class _jugaadhaiState extends State<Jugaadhai> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: (ArticleList()));
  }
}
