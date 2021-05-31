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
          title: Text('Forms'),
          backgroundColor: Colors.green,
        ),
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
              icon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'please fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter password',
              labelText: 'Password',
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'please fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Github link',
              labelText: 'Github',
              icon: Icon(Icons.link),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'please fill the details';
              }
              return null;
            },
          ),
          Container(
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                if(keys.currentState.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Succesfully submitted'),
                  backgroundColor: Colors.red,
                    action: SnackBarAction(
                      label: 'Hello',
                      onPressed: (){},
                    ),
                  ));
                // };
                  },
            ),
          ),
        ],
      ),
    );
  }
}
