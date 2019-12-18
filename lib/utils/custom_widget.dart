import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final _randomWordPair = <WordPair>[]; // get WordPair in a List
  final _saveWordPairs =
      Set<WordPair>(); // unique collection of wordPair appear only one

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) return Divider();
          // calculate no of wordPair in the listView minus divider
          final item = index ~/ 2;

          // as we scroll down generate new 10 wordPair
          if (item >= _randomWordPair.length) {
            _randomWordPair.addAll(generateWordPairs().take(10));
          }

          // variable store already saved wordPair
          final alreadySaved = _saveWordPairs.contains(_randomWordPair[item]);

          return ListTile(
            title: Text(
              _randomWordPair[item].asPascalCase,
              style: Theme.of(context).textTheme.body1,
            ),
            trailing: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
            ),
            onTap: () {
              setState(() {
                if (alreadySaved) {
                  _saveWordPairs.remove(_randomWordPair[item]);
                } else {
                  _saveWordPairs.add(_randomWordPair[item]);
                }
              });
            },
          );
        },
      ),
    );
  }
}
