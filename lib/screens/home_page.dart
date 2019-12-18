import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget {
  var wordPair = WordPair.random();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('WordPair Generator'),
        ),
      ),
      body: Center(
        child: Text(widget.wordPair.asPascalCase),
      ),
    );
  }
}
