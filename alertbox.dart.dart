import 'package:flutter/material.dart';
//MaterialApp creates a space in your device to hold scaffold that contains all the widget
void main() {
  runApp(new MaterialApp(home: new Application()));
}

//Stateful Widget is a widget that is not static. It can be scrollable, dynamic. It 
//Stateful Widget is a widget that is not static. It can be scrollable, dynamic.
//It implements the basic material design visual layout structure
class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
//mnethod to display the dialog box.
  void dialog(){
    showDialog(
        context: context,
        child: new AlertDialog(
          //shows AlertDialog box
          title: new Text('Warning'),
          //provide a title in your Alert bix
          content: new Text('You will die if you press on close button'),
          //content to be displayed below title in your Alert dialog box
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.close), onPressed: (){
              Navigator.pop(context);//it is used for routing. it closes the current paage and brings you back to the subsequent previous page
            })
          //provides an icon of close that performs the functionality of closing
          ],
        )
    );
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          //an elevated button
            onPressed: (){dialog();
                         //on clicking the button, the Alert dialog box appears as the method dialog() is invoked
                         },
          child: new Text('Activate AlertDialog'),
          //provides title to your raised button
        ),
      ) ,
    );
  }
}
