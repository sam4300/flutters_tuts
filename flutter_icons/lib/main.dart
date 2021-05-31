import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icons Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icons'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 40.0,
                      textDirection: TextDirection.ltr,
                    ),
                    Text('Home'),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Colors.black,
                      size: 40.0,
                      textDirection: TextDirection.ltr,
                    ),
                    Text('Alarm'),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 40.0,
                      textDirection: TextDirection.ltr,
                    ),
                    Text('Person'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// This widget is the root of your application.
