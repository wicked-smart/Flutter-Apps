import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ListDemo(),
    );
  }
}

class ListDemo extends StatelessWidget {
  //final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 400, 100];

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: const <Widget>[
      Card(child: ListTile(title: Text('One-line ListTitle'))),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One Line with Leading Widget'),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('One Line with trailing widget'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One line with both widgets'),
          trailing: Icon(Icons.more_vert),
        ),
      )
    ]);
  }
}
