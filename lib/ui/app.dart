import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'list/list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amberAccent,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder> {
        '/list': (BuildContext context) => ListPage(title: 'List page test'),
      },
    );
  }
}