import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
  }
  
  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "grid view",
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(),
          );
        }
      }
      
      class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("grid view"),
      ),
      body: new GridView.count(
        crossAxisCount: 3,
        children: List<Widget>.generate(12, (index){
          return new GridTile(
            child: new Card(
              color: Colors.limeAccent.shade400,
              child: new Center(child: new Text("tile$index"),),
            )
          );
        }
      ),
    ),
    );
  }
      }