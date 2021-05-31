import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void  pressed(){
     print('Hello there');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'Portfolio',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.green[100],
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.black, width: 4.0),
                  color: Colors.red,
                ),
                alignment: Alignment.topCenter,
                height: 200.0,
                width: 200.0,
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 170,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Samar Thapa',
                    icon: Icon(Icons.person),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            FlatButton(
              child: Text(
                'Pressed'),
              onPressed: pressed,
              color: Colors.purple,
              textColor: Colors.blue,
            ),
            ElevatedButton(
              child: Text('lets Go', style: TextStyle(color: Colors.yellow,fontSize: 20.0),),
              onPressed:null,


            )
          ],
        ),
      ),

    );

  }
}
