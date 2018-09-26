import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Alerts> {

  Widget build(BuildContext context) {
    return new Scaffold(
backgroundColor: Colors.white,
appBar :new AppBar(
  title: new Text('Suggested News'),
),

      body: new ListView(
        children: <Widget>[

          
      //new Image.asset('assets/logo.png'),
      
      new ListTile(
      title: new Text('Description'),
      isThreeLine: true,
      subtitle: new Text('This is our Subtitle'),
      trailing: new Icon(Icons.image),
      leading: new Image.asset('assets/logo.png',width: 40.0,height: 40.0), 
    //  image:
    ),
    new ListTile(
      title: new Text('Description'),
      isThreeLine: true,
      subtitle: new Text('This is our Subtitle'),
      trailing: new Icon(Icons.image),
      leading: new Image.asset('assets/logo.png',width: 40.0,height: 40.0), 
   
    ),
    new ListTile(
      title: new Text('Description'),
      isThreeLine: true,
      subtitle: new Text('This is our Subtitle'),
      trailing: new Icon(Icons.image),
      leading: new Image.asset('assets/logo.png',width: 40.0,height: 40.0), 
   
    ),
        ],
      )
    );
  }
}
