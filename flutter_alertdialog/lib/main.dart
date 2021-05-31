import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertWidget(),
    );
  }
}

class AlertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Press me'),
          onPressed: () {
            showDialogWidget(context);
          },
        ),
      ),
    );
  }
}

showDialogWidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Are you sure you want to exit'),
          title: Text('press me'),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ok'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Cancel'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            )
          ],
        );
      });
}
