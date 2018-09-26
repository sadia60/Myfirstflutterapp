
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'view/Homescreen1.dart';
import "view/RegisterScreen.dart";
import 'view/AlertsScreen.dart';
import 'view/Filecomplaint1.dart';
import 'view/Prac1.dart';
import 'view/Dashboard.dart';
import 'View/Dashboard1.dart';
import 'View/SettingsScreen.dart';

//import 'Login.dart';
//import 'package:flutter/cupertino.dart';
//import 'Filecomplaint1.dart';

void main() {
runApp(
new MaterialApp(
home: new Homescreen1(),
routes: <String, WidgetBuilder> {
'/Homescreen1' : (BuildContext context) => new Homescreen1(),
'/Register' : (BuildContext context) => new RegisterationScreen(),
'/Alerts' : (BuildContext context) => new Alerts(),
'/Filecomplaint1': (BuildContext context) => new Filecomplaint1(),
'/Prac1' : (BuildContext context) => new MyApp(),
'/Dashboard' : (BuildContext context) => new Dashboard(),
'/Dashboard1' : (BuildContext context) => new Dashboard1(),
'/SettingsScreen' :(BuildContext context) => new SettingsScreen()
},
)
);
}






/*
// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.






/*


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'view/Homescreen1.dart';
import "view/RegisterScreen.dart";
import 'view/AlertsScreen.dart';
import 'view/Filecomplaint1.dart';
//import 'view/Prac1.dart';
import 'view/Dashboard.dart';
import 'View/Dashboard1.dart';
import 'View/SettingsScreen.dart';
import 'View/datepicker.dart';
//import 'View/MyHomePage.dart';
//import 'Login.dart';
//import 'package:flutter/cupertino.dart';
//import 'Filecomplaint1.dart';
////import 'View/cupertino.dart';


void main() {
runApp(
new MaterialApp(
debugShowCheckedModeBanner: false,
home: new//s MyApp(),
//RegisterationScreen(),

Homescreen1(),

//CupertinoPickerDemo(),
routes: <String, WidgetBuilder> {
'/Homescreen1'         : (BuildContext context) => new Homescreen1(),
'/Register'            : (BuildContext context) => new RegisterationScreen(),
'/Alerts'              : (BuildContext context) => new Alerts(),
'/Filecomplaint1'      : (BuildContext context) => new Filecomplaint1(),
'/Prac1'               : (BuildContext context) => new MyApp(),
'/Dashboard'           : (BuildContext context) => new Dashboard(),
'/Dashboard1'          : (BuildContext context) => new Dashboard1(),
'/SettingsScreen'      : (BuildContext context) => new SettingsScreen(),
//'/MyHomePage'          : (BuildContext context) => new MyHomePage(),
//'/CupertinoPickerDemo' : (BuildContext context) => new CupertinoPickerDemo()
'/MyAppdate'      : (BuildContext context) => new MyAppdate(),
},
)
);
}
//import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
/*
void main() {
  //debugPaintSizeEnabled = true;
  runApp(new 
  MyApp());

}

*/

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 210.0,
      child: new Card(
        child: new Column(
          children: [
            new ListTile(
              title:new Text('1625 Main Street',
                  style:new TextStyle(fontWeight: FontWeight.w500)),
              subtitle:new Text('My City, CA 99984'),
              leading:new Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
           new Divider(),
           new ListTile(
              title:new Text('(408) 555-1212',
                  style:new TextStyle(fontWeight: FontWeight.w500)),
              leading:new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
           new ListTile(
              title:new Text('costa@example.com'),
              leading:new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:new Center(
        child: card,
      ),
    );
  }
}

*/
// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/*

import 'package:flutter/material.dart';
// import 'Model/print.dart';

//import 'View/Dashboard1.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

// void main() {
//  // debugPaintSizeEnabled = true;
//   runApp(MyApp());
// }

// void main() {
// runApp(
// new MaterialApp(
// home: new MyApp(),
// ),
// }




void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),

      child: new Row(
        children: [
          new Expanded(
            child:new  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style:new  TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
   
        //   new Icon(
        //     Icons.notifications,
        //     color: Colors.blue[500],
        //   ),
        //  new  Text('41'),
         ],
      ),
    );


    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),

            ),  
          ),
        ],
      );
    }


    Widget buttonSection =new  Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.calendar_today, 'Settings'),
          buildButtonColumn(Icons.timer, 'Alert'),
        
           //title: new Text('Home'),
            //icon: 
        new Stack(
            //margin: 

          children: <Widget>[
    
//            new EdgeInsets.only(top: 8.0),
            new Icon(Icons.notifications,color: Colors.blue[500],

        ),
            new Positioned(  // draw a red marble
              top: 8.0,
              right: 0.0,
    
              child: new Icon(Icons.brightness_1, size: 8.0, 
                color: Colors.redAccent),
            )
          
          ]
        ),




//icon: 
new Stack(
              children: <Widget>[
                new Icon(Icons.notifications),
                new Positioned(
                  top: 8.0,
                  right: 0.0,
                  child: new Stack(
                    children: <Widget>[
                      new Icon(Icons.brightness_1,
                          size: 18.0, color: Colors.green[800]),
                      new Positioned(
                        top: 1.0,
                        right: 4.0,
                        //child: new Text("item_count",
                        child: new Text("1",
                        
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),

                )
              ],
            )

          new Icon(
            Icons.notifications,
            color: Colors.blue[500],
          ),
         
         new  Text('41'),
    
    
         buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection =new  Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Top Lakes'),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'assets/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}


*/





// import 'view/Homescreen1.dart';

// import 'Model/_loadCrosswordAsset.dart';

// import 'Model/print.dart';

/*
void main() {
runApp(
new MaterialApp(
debugShowCheckedModeBanner: false,
home: new Print1(),
)

);
//loadCrossword();
}



*/


//

/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'view/Homescreen1.dart';
import "view/RegisterScreen.dart";
import 'view/AlertsScreen.dart';
import 'view/Filecomplaint1.dart';
import 'view/Prac1.dart';
import 'view/Dashboard.dart';
import 'View/Dashboard1.dart';
import 'View/SettingsScreen.dart';
import 'View/datepicker.dart';
//import 'View/MyHomePage.dart';
//import 'Login.dart';
//import 'package:flutter/cupertino.dart';
//import 'Filecomplaint1.dart';
////import 'View/cupertino.dart';


void main() {
runApp(
new MaterialApp(
debugShowCheckedModeBanner: false,
home: new RegisterationScreen(),

//Homescreen1(),

//CupertinoPickerDemo(),
routes: <String, WidgetBuilder> {
'/Homescreen1'         : (BuildContext context) => new Homescreen1(),
'/Register'            : (BuildContext context) => new RegisterationScreen(),
'/Alerts'              : (BuildContext context) => new Alerts(),
'/Filecomplaint1'      : (BuildContext context) => new Filecomplaint1(),
'/Prac1'               : (BuildContext context) => new MyApp(),
'/Dashboard'           : (BuildContext context) => new Dashboard(),
'/Dashboard1'          : (BuildContext context) => new Dashboard1(),
'/SettingsScreen'      : (BuildContext context) => new SettingsScreen(),
//'/MyHomePage'          : (BuildContext context) => new MyHomePage(),
//'/CupertinoPickerDemo' : (BuildContext context) => new CupertinoPickerDemo()
'/MyAppdate'      : (BuildContext context) => new MyAppdate(),
},
)
);
}

*/
/*
  Widget _getSuccessStateWidget() {
    return new ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new ListTile(
                  title: new Card(
                    elevation: 0.0,
                    child: new Center(
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new Image.asset(
                              listArrayAsset[index],
                              fit: BoxFit.fill,
                              height: 120.0,
                              gaplessPlayback: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
//                    _onPressed(index);
                  },
                )
              ]);
        });
  }
void _onPressed(int position) {
    if (position == 1) {
       {Navigator.of(context).pushNamed('/Prac1');}
//      Navigator.of(context).pushNamed(SecondPage.scpg);
    } else if (position == 0) {
     {Navigator.of(context).pushNamed('/Prac1');}
      //Navigator.of(context).pushNamed(VideoPlayPause.cid);
  //    Navigator.of(context).pushNamed(Example.example);
    } else if (position == 2) {
       {Navigator.of(context).pushNamed('/Prac1');}
//      Navigator.of(context).pushNamed(MultiTab.tabdemo);
    } else if (position == 3) {
   {Navigator.of(context).pushNamed('/Prac1');}
//      Navigator.of(context).pushNamed(MyApps.tab);
    }
    else if(position == 4)
      {
         {Navigator.of(context).pushNamed('/Prac1');}
  //      Navigator.of(context).pushNamed(Olacab.olacab);
      }
    else if(position == 5)
    {
       {Navigator.of(context).pushNamed('/Prac1');}
//      Navigator.of(context).pushNamed(AnimatedListSample.anim);
    }
    else if(position == 6)
    {
   {Navigator.of(context).pushNamed('/Prac1');}
  //    Navigator.of(context).pushNamed(AnimatedListSample.anim);
    }
    else if(position == 7)
    {
       {Navigator.of(context).pushNamed('/Prac1');}
//      Navigator.of(context).pushNamed(AnimatedListSample.anim);
    }
  }
  
}
*/




// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
// runApp(
// new MaterialApp(
// home: new Homescreen1(),
// routes: <String, WidgetBuilder> {
// '/Homescreen1': (BuildContext context) => new Homescreen1(),
// '/Registerationscreen2' : (BuildContext context) => new Registerationcreen2()

// },
// )
// );
// }

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'view/Homescreen1.dart';
// import "view/RegisterScreen.dart";
// import 'view/AlertsScreen.dart';
// import 'view/Filecomplaint1.dart';
// import 'view/Prac1.dart';
// import 'view/Dashboard.dart';
// import 'View/Dashboard1.dart';
// import 'View/SettingsScreen.dart';

// //import 'Login.dart';
// //import 'package:flutter/cupertino.dart';
// //import 'Filecomplaint1.dart';

// void main() {
// runApp(
// new MaterialApp(
// home: new Homescreen1(),
// routes: <String, WidgetBuilder> {
// '/Homescreen1'   : (BuildContext context) => new Homescreen1(),
// '/Register'      : (BuildContext context) => new RegisterationScreen(),
// '/Alerts'        : (BuildContext context) => new Alerts(),
// '/Filecomplaint1': (BuildContext context) => new Filecomplaint1(),
// '/Prac1'         : (BuildContext context) => new MyApp(),
// '/Dashboard'     : (BuildContext context) => new Dashboard(),
// '/Dashboard1'     : (BuildContext context) => new Dashboard1(),
// '/SettingsScreen'         :(BuildContext context) => new SettingsScreen()
// },
// )
// );
// }


// import 'code/Employee.dart';
// import 'code/DBHelper.dart';
// import 'code/employeelist.dart';

/*
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SQFLite DataBase Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 Employee employee = new Employee("", "", "", "");
  
String firstname; 
String lastname;
String emailId;
String mobileno;
final scaffoldKey = new GlobalKey<ScaffoldState>();
final formKey = new GlobalKey<FormState>();


    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        title: new Text('Saving Employee'),
        actions: <Widget>[
            new IconButton(
              icon: const Icon(Icons.view_list),
              tooltip: 'Next choice',
              onPressed: () {
              navigateToEmployeeList();
              },
            ),
          ]
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: new Column(
            children: [
              new TextFormField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(labelText: 'First Name'),
                validator: (val) =>
                    val.length == 0 ?"Enter FirstName" : null,
                onSaved: (val) => this.firstname = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(labelText: 'Last Name'),
                validator: (val) =>
                    val.length ==0 ? 'Enter LastName' : null,
                onSaved: (val) => this.lastname = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(labelText: 'Mobile No'),
                validator: (val) =>
                    val.length ==0 ? 'Enter Mobile No' : null,
                onSaved: (val) => this.mobileno = val,
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(labelText: 'Email Id'),
                validator: (val) =>
                    val.length ==0 ? 'Enter Email Id' : null,
                onSaved: (val) => this.emailId = val,
              ),
              new Container(margin: const EdgeInsets.only(top: 10.0),child: new RaisedButton(onPressed: _submit,
                child: new Text('Login'),),)
              
            ],
          ),
        ),
      ),
    );
  }
  void _submit() {
     if (this.formKey.currentState.validate()) {
      formKey.currentState.save(); 
     }else{
       return null;
     }
    var employee = Employee(firstname,lastname,mobileno,emailId);
    var dbHelper = DBHelper();
    dbHelper.saveEmployee(employee);
    _showSnackBar("Data saved successfully");
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(text)));
  }

  void navigateToEmployeeList(){
     Navigator.push(
    context,
    new MaterialPageRoute(builder: (context) => new MyEmployeeList()),
  );
  }
}
*/





/*
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

enum MyDialogAction {
  yes,
  no,
  maybe
}

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onChange(String value) {
    setState((){
      _text = value;
    });
  }

  void _dialogResult(MyDialogAction value) {
    print('You selected $value');
    Navigator.pop(context);
    //Switch on value
  }

  void _showAlert(String value) {
    if(value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(value,
      style: new TextStyle(fontSize: 30.0),),
      actions: <Widget>[
        new FlatButton(onPressed: (){_dialogResult(MyDialogAction.yes);}, child: new Text('Yes')),
        new FlatButton(onPressed: (){_dialogResult(MyDialogAction.no);}, child: new Text('No')),
        new FlatButton(onPressed: (){_dialogResult(MyDialogAction.maybe);}, child: new Text('Maybe')),
      ],
    );

    showDialog(context: context, child: dialog);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog Demo'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(onChanged: (String value){_onChange(value);},),
              new RaisedButton(
                  onPressed: (){_showAlert(_text);},
                  child: new Text('AlertDialog!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/
















/*
void main(){
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}
enum MyDialogAction{
Yes,
No,
Maybe
}

class _ApplicationState extends State<Application>  {

  String settext ='';

void onChanged(String mediachossen){
    setState((){
      settext= mediachossen;
    });
}

void _dialogResult(MyDialogAction myaction){
  print('You selected $myaction');
  //Switch on value
  Navigator.pop(context);
}

//On click calls the method which change the state to text been changed
void showAlert(String choice){
  if(choice.isEmpty) return;

  AlertDialog dialog=new AlertDialog(content: new Text(choice,style: new TextStyle(fontSize: 30.0),),
  actions:<Widget>[
   new FlatButton( onPressed: (){_dialogResult(MyDialogAction.Yes);},child: new Text('Yes')),
   new FlatButton( onPressed: (){_dialogResult(MyDialogAction.No);},child: new Text('No')),
   new FlatButton( onPressed: (){_dialogResult(MyDialogAction.Maybe);},child: new Text('Maybe')),
  ],
  );
    
    showDialog(context: context,child: dialog);
   
}

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    //  return new Scaffold(
      home: new Scaffold(
      body: new Container(
        child:new Center(
        child:new Column(
          children: <Widget>[
               new TextField(onChanged: (String value){onChanged(value);},),
            new RaisedButton(onPressed:(){showAlert(settext);},child: new Text(settext),),
        ],
        ),
      ),
      ),
      ),
      );
//  );
  }

}





*/






/*
void main(){
  runApp(new Application());
}

class Application extends StatefulWidget {
  
  @override
  _ApplicationState createState() => new _ApplicationState();
}
        

// void main() => runApp(new MainScreen());

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title:'Raise your voice',  
//  routes: <String, WidgetBuilder> {
// // '/Homescreen1': (BuildContext context) => new Homescreen1(),
//  '/Register' : (BuildContext context) => new Register(),
//  },
//      // theme: new ThemeData(
//        // primarySwatch: Colors.blue,
//       //),
// home: new Homescreen1(),

// //      home: new Prac1(),

//     );
//   }
// }











































// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  


//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(widget.title),
//       ),
//       body: new SafeArea(
//           top: false,
//           bottom: false,
//           child: new Form(
//               key: _formKey,
//               autovalidate: true,
//               child: new ListView(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 children: <Widget>[               
//                   new Center(child:      new Text(
//               "About WMCC",style: new TextStyle(decorationColor: Colors.black,fontSize: 20.0)),
//                    ),
              
              
//                   new Text("WMCIn early 2014, the National Commission on the Status of Women (NCSW) in collaboration with Uks Research Centre launched a unique pilot by the name of Pakistani Women’s Media Complaint Cell (PWMCC)"
//                 ),
//  //new Image.asset('images/logo.png'),
   
//                   new TextFormField(
//                     decoration: const InputDecoration(
//                       icon: const Icon(Icons.calendar_today),
//                       hintText: 'Enter your Age',
//                       labelText: 'Age',
//                     ),
//                     //keyboardType: TextInputType.datetime,
//                   ),
//                   new Container(
//                       padding: const EdgeInsets.only(left: 40.0, top: 20.0),
//                       child: new RaisedButton(
//                         child: const Text('RAED MORE'),
//                         onPressed: null,
//                       )),
                  
                  
//                   new Container(
//                       padding: const EdgeInsets.only(left: 40.0, top: 20.0),
//                       child: new RaisedButton(
//                         child: const Text('CONTINUE'),
//                         onPressed: null,
//                       )),
                
                
                
//                 ],
//               ))),
//     );
//   }
// }




*/














// // //

// // import 'package:flutter/material.dart';


// // void main() {
// //   runApp(new MaterialApp(home: new Application()));
// // }

// // class Application extends StatefulWidget {
// //   @override
// //   _ApplicationState createState() => new _ApplicationState();
// // }

// // class _ApplicationState extends State<Application> {

// //   String phonetext = '';
// //   String nametext = '';
// //   String agetext = '';
// //   String nictext = '';
// //   String citytext = '';
// //   String emailtext = '';


// //   Widget build(BuildContext context) {
   
// //        title: new Text("Create new account");
// //     return new Scaffold(
// //         body: new Column(
// //           children: <Widget>[
// //             new Text("Create Your Account",style: new TextStyle(color: Colors.black)),
// // //1 phone
// //             new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     phonetext = tval;
// //                   });
// //                 }),
// //             new Text(phonetext)
// //           ,//2 name
// //             new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     nametext = tval;
// //                   });
// //                 }),
// //             new Text(nametext)
// //           ,
// //           //3 age
// //             new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     agetext = tval;
// //                   });
// //                 }),
// //             new Text(agetext)
// //           ,//4 nic
// //             new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     nictext = tval;
// //                   });
// //                 }),
// //             new Text(nictext)
// //         ,
// // //city
// //    new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     citytext = tval;
// //                   });
// //                 }),
// //             new Text(citytext)
// //         ,
// // //email
// //    new TextField(
// //                 onChanged: (String tval) {
// //                   setState(() {
// //                     emailtext = tval;
// //                   });
// //                 }),
// //             new Text(emailtext)
// //         ,

// //           ],
// //         )
// //     );
// //   }
 //}



*/*/