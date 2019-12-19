import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget {
  final wordPair = WordPair.random();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final _randomWordPair = <WordPair>[]; // get WordPair in a List
  final _saveWordPairs =
      Set<WordPair>(); // unique collection of wordPair appear only one

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        final Iterable<ListTile> tiles = _saveWordPairs.map((WordPair pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: Theme.of(context).textTheme.body1,
            ),
          );
        });
        final List<Widget> divided = ListTile.divideTiles(
          tiles: tiles,
          context: context,
        ).toList();
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Saved WordPairs',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          body: ListView(
            children: divided,
          ),
        );
      }),
    );
  }

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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: _pushSaved,
            )
          ],
        ),
        body: Container(
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

              // variable check is WordPair in _saveWordPairs
              final alreadySaved =
                  _saveWordPairs.contains(_randomWordPair[item]);

              // ListView.builder return
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
        ));
  }
}
