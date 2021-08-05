import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
