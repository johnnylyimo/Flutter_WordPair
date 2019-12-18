import 'package:english_words/english_words.dart';
import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final _randomWordPair = <WordPair>[];
//  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: _randomWordPair.length,
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) return Divider();
          return ListTile();
        },
      ),
    );
  }
}

//Card(
//elevation: 10.0,
//color: Theme.of(context).colorScheme.primary,
//child: Center(
//child: Text('Computer'),
//),
//)
