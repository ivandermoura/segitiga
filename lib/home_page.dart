import 'package:flutter/material.dart';



class Alasvalidator {
  static String validate(String value) {
    return value.isEmpty ? 'kolom alas tidak boleh kosong' : null;

  }
}

class Homepage extends StatefulWidget {
  
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var alas = 0, tinggi = 0, sisimiring = 0, hasil2 = 0;


  double hasil = 0;

  

  final TextEditingController t1 = new TextEditingController(text: "-");
  final TextEditingController t2 = new TextEditingController(text: "-");
  final TextEditingController t3 = new TextEditingController(text: "-");


  void hitungLuas() {
    setState(() {
      alas = int.parse(t1.text);
      tinggi = int.parse(t2.text);
      hasil = 0.5 * alas * tinggi;
    });
  }

  void hitungKeliling() {
    setState(() {
      alas = int.parse(t1.text);
      tinggi = int.parse(t2.text);
      sisimiring = int.parse(t3.text);
      hasil2 = alas + tinggi + sisimiring;
    });
  }


  void doClear() {
    setState(() {
      t1.text = "-";
      t2.text = "-";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Luas Segitiga"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $hasil",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Alas segitiga"),
              controller: t1,
              validator: Alasvalidator.validate,
              key: Key('Alas'),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "tinggi segigita"),
              controller: t2,
              key: Key('Tinggi'),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "sisi miring segigita"),
              controller: t3,
              key: Key('Smiring'),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Luas segitiga"),
                  color: Colors.greenAccent,
                  onPressed: hitungLuas,
                  key: Key('LSegitiga'),
                ),
                new MaterialButton(
                  child: new Text("Keliling segitiga"),
                  color: Colors.greenAccent,
                  onPressed: hitungKeliling,
                  key: Key('KSegitiga'),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                  key: Key('clear'),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 5.0),
            ),
          ],
        ),
      ),
    );
  }
}
