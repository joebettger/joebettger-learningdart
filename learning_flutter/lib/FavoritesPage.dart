import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/main.dart';
import 'package:provider/provider.dart';

class FavoritesPageState extends ChangeNotifier {}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    List<Widget> contentList = [];

    if (appState.favorites.isEmpty) {
      contentList.add(Text('No Favorites Selected'));
    } else {
      for (var fav in appState.favorites) {
        contentList.add(Text(fav.asString));
      }
    }

    return ListView(children: <Widget>[...contentList]);
  }
}
