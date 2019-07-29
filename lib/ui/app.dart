import 'package:flutter/material.dart';
import 'package:flutter1/di/common_injector.dart';
import 'package:inject/inject.dart';

import 'home/home_page.dart';
import 'list/list_page.dart';

@provide
class App extends StatelessWidget {

  CommonInjector commonInjector;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amberAccent,
      ),
      home: HomePage(title: 'Flutter playground'),
      routes: <String, WidgetBuilder> {
        '/list': (BuildContext context) =>
            ListPage(commonInjector.stackQuestionsBloc, title: 'List page test'),
      },
    );
  }
}