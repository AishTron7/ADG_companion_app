import 'package:flutter/material.dart';
class Gallery extends StatefulWidget {
  Gallery({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
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
    ),
    body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/images/ADG-1.jpg',  
              width: 624.0,
              height: 351.0,
              fit: BoxFit.cover,),
            Image.asset('assets/images/ADG-2.jpg',  
              width: 1280.0,
              height: 960.0,
              fit: BoxFit.cover,),
            Image.asset('assets/images/ADG-3.jpg',  
              width: 1024.0,
              height: 768.0,
              fit: BoxFit.cover,),
          ],
          
        ),
      ),
    );
    
     
  }
  
}