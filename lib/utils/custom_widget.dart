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
          return ListTile();
        },
      ),
    );
  }
}
