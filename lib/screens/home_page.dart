import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';
import 'package:wordpair_generator/utils/custom_widget.dart';

class HomePage extends StatefulWidget {
  final wordPair = WordPair.random();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'WordPair Generator',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
        body: MyListView());
  }
}

//Center(
//child: Text(
//widget.wordPair.asPascalCase,
//style: Theme.of(context).textTheme.body1,
//),
//),
