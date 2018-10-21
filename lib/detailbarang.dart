import 'package:flutter/material.dart';

class DetailBarang extends StatefulWidget {
  String item_code;
  String item_name;
  String price;
  String stock;

  DetailBarang({this.item_code, this.item_name, this.price, this.stock});

  @override
  _DetailBarangState createState() => _DetailBarangState(
      item_code: this.item_code,
      item_name: this.item_name,
      price: this.price,
      stock: this.stock);
}

class _DetailBarangState extends State<DetailBarang> {
  String item_code;
  String item_name;
  String price;
  String stock;

  _DetailBarangState({this.item_code, this.item_name, this.price, this.stock});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: new AppBar(
          title: new Text("Detail Barang"),
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          height: 250.0,
          child: Card(
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 30.0),),
                      new Text("Kode Barang : ${this.item_code}"),
                      new Text("Nama Barang : ${this.item_name}"),
                      new Text("Harga Barang : ${this.price}"),
                      new Text("Stock barang : ${this.stock}")
                    ],
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(child: new Text("Edit"),color: Colors.green,onPressed: (){},),
                      new Padding(padding: EdgeInsets.only(right: 20.0),),
                      new RaisedButton(child: new Text("Delete"),color: Colors.red,onPressed: (){},)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
