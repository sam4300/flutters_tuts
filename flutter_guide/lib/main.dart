import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: RandomWords(

        ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _randomWordPairs = <WordPair>[];
  Widget _buildlist() {
final _randomWordPairs = <WordPair>[];    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, item) {
        final index = item;
        if(item.isOdd)return Divider(thickness:10, color: Colors.red);
        if(index >= _randomWordPairs.length){
          _randomWordPairs.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_randomWordPairs[index]);
      },

    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(title: Text('Hello', style: TextStyle(color: Colors.red),),);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator'),
      ),
      body:_buildlist(),
    );
  }
}
