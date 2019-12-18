import "package:flutter/material.dart";
import 'package:wordpair_generator/utils/custom_widget.dart';

class HomePage extends StatefulWidget {
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
      body: Center(child: MyListView()),
    );
  }
}
