import 'package:flutter/material.dart';

class RotatedBoxExample extends StatefulWidget {
  @override
  _RotatedBoxExampleState createState() => _RotatedBoxExampleState();
}

class _RotatedBoxExampleState extends State<RotatedBoxExample> {
  int turn;
  double _value;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    turn = 0;
    _value = 0.0;
  }
  void _onChnged(double value){
    setState(() {
      _value = value;
      turn = value.toInt();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('add widgets here'),
              Slider(value: _value,
                onChanged: _onChnged,
                max: 4.0,
                min: 0.0,
              ),
              RotatedBox(quarterTurns: turn,
              child: Text('See Rotated Text'),),
            ],
          ),
        ),
      ),
    );
  }
}
