import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {

  const ProfileOption ({Key key, @required this.index}) : super(key : key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.airplay,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text("History $index"),
        subtitle: Text("Previous matches"),
        onTap: () {},
      ),
    );
  }
}