import 'package:flutter/material.dart';
import 'package:bet_app/widgets/left_drawer.dart';
import 'package:bet_app/widgets/gridview_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
        child: const GridViewBuildWidget()
      ),
      drawer: LeftDrawerWidget(),
    );
  }
}