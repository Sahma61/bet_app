import 'package:flutter/material.dart';
import 'package:bet_app/widgets/left_drawer.dart';
import 'package:bet_app/widgets/gridview_builder.dart';
import 'package:bet_app/widgets/profile.dart';
import 'package:bet_app/widgets/profileOptionBuilder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  List _listPages = List();
  Widget _currentPage;

   @override
  void initState() {
    super.initState();
    _listPages
      ..add(const GridViewBuildWidget())
      ..add(null)
      ..add(Profile());
    _currentPage = const GridViewBuildWidget();
  }

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
        child: _currentPage
      ),
      drawer: LeftDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notifications"),
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text("Profile"),
            backgroundColor: Colors.lightBlue,
          ),
        ],
        onTap: (selectedIndex) => _pageSelect(selectedIndex),
      ),
    );
  }

 
        
  _pageSelect(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }
}