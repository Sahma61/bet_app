import 'package:flutter/material.dart';
import 'package:bet_app/classes/grid_icons.dart';

class ListElem extends StatelessWidget {

  const ListElem ({Key key, @required this.index}) : super(key : key);
  final int index;

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons().getIconList();
    return ListTile(
      leading: Icon(
        _iconList[index],
        size: 48.0,
        color: Colors.lightBlue
      ),
      title: Text(
        "Premier League",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.lightGreen
        )
      ),
      subtitle: Text(
        "Playoffs",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      trailing: Text("8:00 PM"),
      onTap: () => print("Tapped on Row $index"),
    );
  }
}