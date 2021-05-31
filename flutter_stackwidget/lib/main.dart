import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            overflow: Overflow.visible,
            children: [
              Container(
                color: Colors.red,
                height: 400,
                width: 400,
                child: Center(
                  child: Text(
                    'Samar',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 40),
                  ),
                ),
              ),
              Positioned(
                width: 100,
                height: 100,
                top: 30.0,
                right: 40.0,
                child: Container(
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text('Hello', style: TextStyle(color: Colors.green),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
