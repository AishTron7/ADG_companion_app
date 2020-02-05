import 'package:flutter/material.dart';
class Members extends StatefulWidget {
  Members({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 26, 66, 1.0),
      appBar: AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    )
    );
    
     
  }
  
}