import 'package:flutter/material.dart';
import 'package:flutter1/ui/list/list_item.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage>{

  List<String> _items = ['item1', 'item2', 'item3'];

  void _addNewItem(){
    setState(() {
      _items.add('item' + (_items.length + 1).toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: _items.length,
        padding: EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) =>
            ListItem(index: index, model: _items[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewItem,
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}