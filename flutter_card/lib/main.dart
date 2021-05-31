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
          title: Text('Card Widget'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            height: 200.0,
            width: 300.0,
            child: Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              elevation: 20.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40.0,
                        color: Colors.yellow,
                      ),
                      title: Text(
                        'Samar',
                        style: TextStyle(fontSize: 20.0, color: Colors.yellow),
                      ),
                      subtitle: Text('Programmer', style: TextStyle(color: Colors.yellow,),
                    ),
                    ),

                  ),
                  ButtonBar(
                    children: [
                      FloatingActionButton.extended(onPressed:(){} ,label: Text('Contact'), icon: Icon(Icons.call),),
                      FloatingActionButton.extended(onPressed:(){} ,label: Text('mail'), icon: Icon(Icons.mail),),


                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
