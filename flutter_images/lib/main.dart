import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
          backgroundColor: Colors.green,
        ),
        body: Center(
    child: Column(
    children: [
      FadeInImage.assetNetwork(image: 'https://i.pinimg.com/originals/19/d3/c7/19d3c73311beccc67b8f9d1a547f2e3d.jp',placeholder: 'assets/Av.jpg' ),
      // Image.network('https://i.pinimg.com/originals/19/d3/c7/19d3c73311beccc67b8f9d1a547f2e3d.jpg', height: 500, width: 200,),
    ],
    ),
    ),
    ),
    );
  }
}
