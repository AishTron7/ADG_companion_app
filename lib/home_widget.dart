import 'package:flutter/material.dart';
import 'Projects_wigdet.dart';
import 'Gallery_widget.dart';
import 'Members_widget.dart';


class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [new Projects(title: 'Current ADG Projects'),
   new Gallery(title: 'Photos'),
   new Members(title: 'List of all members'),];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     
	 body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
		 onTap: onTabTapped,
		 selectedItemColor: Colors.amber[800],
         currentIndex: _currentIndex,
         items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.poll),
           title: new Text('Projects'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.panorama),
           title: new Text('Gallery'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.people),
           title: Text('Members')
         )
       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
