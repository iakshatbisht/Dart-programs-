import 'package:flutter/material.dart';

//MaterialApp has a scaffold that creates aa layout to store all the widgets in your app
//staeful widget is the one that is not a static page


void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//creates a top bar 
        title: new Text('AppBar'),
//gives title to your app bar
        backgroundColor: Colors.blue,
//sets bg colour to your appbar
        elevation: 30.0,
//elevates it from the scaffold and provides shadow effect
        centerTitle: true,
//brings your app title to center
        titleSpacing: 70.0,
//makes your title look more good by providing spacing between each letter of the text
        toolbarOpacity: 0.5,
//provides opacity to your appBar
      ),
    );
  }
}










