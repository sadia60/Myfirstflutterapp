import 'package:flutter/material.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {




  Widget build(BuildContext context) {
    return new 
  
    Scaffold(
backgroundColor: Colors.white,
appBar: new AppBar(
  title: new Text('History'),
),
//child :new
/* Center(
 child: new AspectRatio(
  aspectRatio: 100 / 100,
  child: new Container(
    decoration: new BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.orange,
      )
    ),
  ),
);

    */
      body: new ListView(
        children: <Widget>[

          
      //new Image.asset('assets/logo.png'),
      
      new ListTile(
      title: new Text('Media Name'),
      isThreeLine: true,
      subtitle: new Text('Complaint'),
      trailing: new Icon(Icons.image),
     // leading: new Image.asset('assets/logo.png',width: 40.0,height: 40.0), 
    //  image:
    ),
    new ListTile(
      title: new Text('Media Name'),
      isThreeLine: true,
      subtitle: new Text('Complaint'),
      trailing: new Icon(Icons.image),
    ),
    new ListTile(
      title: new Text('Media Name'),
      isThreeLine: true,
      subtitle: new Text('Complaint'),
      trailing: new Icon(Icons.image),
    ),
        ],
      )
    );
  







  }

}
