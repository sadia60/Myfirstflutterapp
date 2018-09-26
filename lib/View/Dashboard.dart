import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[

          
      //new Image.asset('assets/logo.png'),
      
      new ListTile(

      title: new Text('Description'),    
      isThreeLine: true,
      subtitle: 
   new GestureDetector(
  onLongPress: () {
   // Navigator.pushNamed(context, "/Alerts'");
  Navigator.of(context).pushNamed('/Alerts');
  },
  child: new Text("File a Complaint"),
),
      //new Text('This is our Subtitle'),
      trailing: new Icon(Icons.image),
// leading: new Image.asset('assets/redcomplaint.png'),
 
     leading: new Image.asset('assets/logo.png',width: 150.0,height: 150.0), 
 // new Image.asset('assets/logo.png',width: 150.0,height: 150.0),   
    //  image:
    ),
    new ListTile(
      title: new Text('Description'),
      isThreeLine: true,
      subtitle: new Text('Complaint history'),
      trailing: new Icon(Icons.image),
    ),
    new ListTile(
      title: new Text('Description'),
      isThreeLine: true,
      subtitle: new Text('This is our Subtitle'),
      trailing: new Icon(Icons.image),
    ),
        ],
      )
    );
  }
}
