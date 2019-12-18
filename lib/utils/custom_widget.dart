import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final _randomWordPair = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) return Divider();
          // calculate no of wordPair in the listView minus divider
          final item = index ~/ 2;
          if (item >= _randomWordPair.length) {
            _randomWordPair.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text('hi'),
          );
        },
      ),
    );
  }
}
