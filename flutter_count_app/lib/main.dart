import 'package:flutter/material.dart';
import 'package:flutter_count_app/TabBarPageWidget.dart';
import 'package:flutter_count_app/TabBarBottomPageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabView Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wells TabBarDemo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TabBarPageWidget()));
            },
            child: Text("Top Tab"),
          ),
          FlatButton(
            color: Colors.orange,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TabBarBottomPageWidget();
              }));
            },
            child: Text("Bottom Tab"),
          ),
        ],
      ),
    );
  }
}
