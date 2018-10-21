import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Data"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Kode Barang", labelText: "Kode barang"),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Nama Barang", labelText: "Nama barang"),
            ),new TextField(
              decoration: new InputDecoration(
                  hintText: "Harga Barang", labelText: "Harga barang"),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Kode Barang", labelText: "Kode barang"),
            ),
            new RaisedButton(child: new Text("Add Data"),onPressed: (){}, color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}
