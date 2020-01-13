import 'package:flutter/material.dart';
import 'home_page.dart';
//import 'hp.dart';
void main() => runApp(Luassegitiga());

class Luassegitiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Luas Segitiga",
      theme: new ThemeData(primarySwatch: Colors.red),
      home:  new Homepage(),
      
    );
  }
}

