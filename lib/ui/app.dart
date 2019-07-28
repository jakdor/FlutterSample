import 'package:flutter/material.dart';
import 'package:flutter1/common/bloc/stack_questions_bloc.dart';
import 'package:inject/inject.dart';

import 'home/home_page.dart';
import 'list/list_page.dart';

class App extends StatelessWidget {

  //TODO find way to create bloc only on navigation
  final StackQuestionsBloc stackQuestionsBloc;

  @provide
  const App(this.stackQuestionsBloc) : super();

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
        '/list': (BuildContext context) => ListPage(
            stackQuestionsBloc, title: 'List page test'),
      },
    );
  }
}