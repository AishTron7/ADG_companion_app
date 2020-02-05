import 'package:flutter/material.dart';
class Projects extends StatefulWidget {
  Projects({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 26, 66, 1.0),
      body: makeBody,
      appBar: AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        ),
      ],
    ),
    );
    }
  final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return (
              Card(
                elevation: 8.0,
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(28, 26, 66, .9)),
                child: (
                    ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.local_hospital, color: Colors.white),
        ),
        title: Text(
          "Website for Kasturba Hospital",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            
            Text("Client: KMC", style: TextStyle(color: Colors.white))
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)                   //Right arrow
            )
                ),
                ),
            )
        );
        },
      ),
    );

}