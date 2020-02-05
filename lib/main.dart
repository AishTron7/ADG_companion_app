import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(App());
class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'ADG companion app',
     theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
     home: new Home(),
   );
 }
}