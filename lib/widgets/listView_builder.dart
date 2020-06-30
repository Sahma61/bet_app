import 'package:flutter/material.dart';
import 'package:bet_app/widgets/list_elem.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leagues'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index)  {
            return ListElem(index: index);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}