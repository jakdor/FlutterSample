
import 'package:flutter/material.dart';
import 'package:flutter1/common/model/stack_questions/item.dart';

class ListItem extends StatelessWidget {
  ListItem({Key key, this.index, this.model}) : super(key: key);

  final int index;
  final Item model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.amberAccent,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text('id: ' + index.toString()),
            ),
            Text(model.title)
          ],
        ),
      ),
    );
  }
}