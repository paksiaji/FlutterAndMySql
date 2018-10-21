import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import './detailbarang.dart' as DetailBarang;
import './adddata.dart' as AddData;

void main() {
  runApp(new MaterialApp(
    title: "My Store",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Data;
  Future<String> getData() async {
    final response =
        await http.get("http://192.168.43.221:8080/my_store/getData.php");
    var hasil = json.decode(response.body);
    Data = hasil['result'];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("MY STORE"),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new AddData.AddData()));
          },
        ),
        body: new ItemList(list: Data));
  }
}

class ItemList extends StatelessWidget {
  List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          child: new GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new DetailBarang.DetailBarang(item_code: list[i]['item_code'],item_name: list[i]['item_name'],price: list[i]['price'],stock: list[i]['stock'],)));
            },
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['item_name']),
                leading: new Image(
                  image: new NetworkImage(
                      "https://png.icons8.com/metro/1600/list.png"),
                  width: 30.0,
                ),
                subtitle: new Text(list[i]['stock']),
              ),
            ),
          ),
        );
      },
    );
  }
}
