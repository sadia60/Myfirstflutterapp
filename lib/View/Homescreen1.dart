import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:myapp/Model/Registerationdata.dart';
import 'package:flutter/services.dart';

//import 'package:shared_preferences/shared_preferences.dart';


//import 'dart:async';
//simport 'dart:convert' as JSON;
//import 'View/RegisterationScreen.dart';
//import 'package:myapp/View/RegisterScreen.dart';
// import 'package:flutter/services.dart';
 import 'package:shared_preferences/shared_preferences.dart';
 //import 'dart:async';
enum registerationStatus {
  notRegistered,
  IsRegister,
}





_launchURL() async {
  const url = //s'https://flutter.io';
      'https://tune.pk/video/6993904/womens-media-complaint-cell-uks-research-center-ned-subtitle';
//const url = 'https://wmcc.mybluemix.net/words';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Homescreen1 extends StatefulWidget {
  @override
  _Homescreen1State createState() => new _Homescreen1State();
}
     const String spKey = 'myBool';

class _Homescreen1State extends State<Homescreen1> {
//Registerationdata _data = new Registerationdata();
  //String ttext ='';
  //Loading counter value on start Checks if the user is not registered
  
    SharedPreferences sharedPreferences;
    bool check=false;
  bool _testValue;
  /*
  _checkRegisteration() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //not registered check
//expr1 ?? expr2
//If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.
      // bool  userregistered = (prefs.getBool('userregistered') ?? false);
      bool userregistered = (prefs.getBool('userregistered'));
      if (userregistered == false || userregistered == null) {
        //If login for the first time
        Navigator.of(context).pushNamed('/Register');
      } else if (userregistered == true) {
//  If login after the first time
        Navigator.of(context).pushNamed('/Dashboard1');
      }
    });
  }
  */

  //             {//If login for the first time
  //               Navigator.of(context).pushNamed('/Register');
  //               }//If login after the first time
  //          //     else if (_data.isregistered==true)
  // //              Navigator.of(context).pushNamed('/Dashboard1');

 @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      _testValue = sharedPreferences.getBool(spKey);
      // will be null if never previously saved
      if (_testValue == null) {
        _testValue = false;
        persist(_testValue); // set an initial value
      }
      setState(() {});
    });
  }

 void persist(bool value) {
    setState(() {
      _testValue = value;
    });
    sharedPreferences?.setBool(spKey, value);
  }

  void method1() {
    setState(() {
      //ttext = 'The text is been Changed';
    });
  }

//////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
// double screenWidth = MediaQuery.of(context).size.width;
// double screenHeight = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Women's Media Complaint Cell"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              //      key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 48.0,
                    child: new Image.asset('assets/logo.png',
                        width: 150.0, height: 150.0),
                  ),

                  //     new Image.asset('assets/logo.png',width: 150.0,height: 150.0),

                  new Center(
                    child: new Text(
                      "About WMCC",
                      style: new TextStyle(
                          decorationColor: Colors.black, fontSize: 20.0),
                    ),
                  ),

                  //new DateTime.now();
                  new Text(
                      "As a part of Uks's campaign against the negative portryal of women through media, a short digital story was produced that had endorsement messages from renowned media personnel and human rights activist.The digital story encourages public/media audiences to be a part of Uks a compaign against gender biased media content and to file complaints in the WMCC and to raise voices on gender insensitive media content."),

                  new Container(
                      padding: const EdgeInsets.only(bottom: 20.0, top: 140.0),
                      child: new RaisedButton(
                        child: new Text(
                          'VIEW DIGITAL STORY',
                          style: new TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: _launchURL,

                        // onPressed:
                        //onPressed: () {Navigator.of(context).pushNamed('/Filecomplaint1');}
                        // onPressed: () {Navigator.of(context).pushNamed('/Alerts');}

                        //onPressed: () {Navigator.of(context).pushNamed('/Dashboard1');}

//                     onPressed: () {Navigator.of(context).pushNamed('https://www.google.com');}
                        //          onPressed: () {UrlLauncher.launch('http://www.webpage.com');}
                        //'https://flutter.io'

                        //child: Text('Hello'),
                        //   padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      )),

                  new Container(
                      // padding: const EdgeInsets.only(right:20.0,left: 20.0, top: 190.0),
//                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      padding: const EdgeInsets.only(bottom: 20.0, top: 25.0),
                      child: new RaisedButton(
                          child: new Text(
                            'CONTINUE',
                            style: new TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          splashColor: Colors.blueAccent,
                          onPressed: () {
//  sharedPreferences = await SharedPreferences.getInstance();
   check= sharedPreferences.getBool("loggedIn");//check);
    if (_testValue==false ||  _testValue==null){
    Navigator.of(context).pushNamed('/Registerationform');
   //  Navigator.of(context).pushNamed('/Register');
    
    }
    if(_testValue==true){
    Navigator.of(context).pushNamed('/Dashboard1');
                        
    }
                          }
                          // {                 //       if(_data.Navigator.of(context).pushNamed('/Register');}

                          //               {
                          //        //     if (_data.isregistered==false)
                          //             {//If login for the first time
                          //               Navigator.of(context).pushNamed('/Register');
                          //               }//If login after the first time
                          //          //     else if (_data.isregistered==true)
                          // //              Navigator.of(context).pushNamed('/Dashboard1');
                          //      }

                          //s5onPressed: ()
//                       {Navigator.of(context).pushNamed('/Dashboard1' }
                          //      onPressed: () {Navigator.of(context).pushNamed('/Register');}
                          //  onPressed: () {Navigator.of(context).pushNamed('/Prac1');}
                          )),
                ],
              ))),
    );
  }
}



// class Homescreen1 extends StatelessWidget{
// //final Registerationdata d;

// @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Women's Media Complaint Cell"),
//       ),
//       body: new SafeArea(

//           top: false,
//           bottom: false,
//           child: new Form(
//         //      key: _formKey,
//               autovalidate: true,
//               child: new ListView(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 children: <Widget>[
//                  new Image.asset('assets/logo.png',width: 150.0,height: 150.0),
//                   new Center(child:      new Text(
//               "About WMCC",style: new TextStyle(decorationColor: Colors.black,fontSize: 20.0),),
//                    ),

//               //new DateTime.now();
//                   new Text("WMCIn early 2014, the National Commission on the Status of Women (NCSW) in collaboration with Uks Research Centre launched a unique pilot by the name of Pakistani Women’s Media Complaint Cell (PWMCC)"
//                 ),

//                   new Container(
//                      padding: const EdgeInsets.only( bottom: 20.0,top: 140.0),
//                       child: new RaisedButton(
//                         child: new Text('READ MORE',style: new TextStyle(color: Colors.white),),
//                       color: Colors.blue,
//                       onPressed: _launchURL,

//                        // onPressed:
//         //onPressed: () {Navigator.of(context).pushNamed('/Filecomplaint1');}
//        // onPressed: () {Navigator.of(context).pushNamed('/Alerts');}

//                      //onPressed: () {Navigator.of(context).pushNamed('/Dashboard1');}

// //                     onPressed: () {Navigator.of(context).pushNamed('https://www.google.com');}
//            //          onPressed: () {UrlLauncher.launch('http://www.webpage.com');}
//                      //'https://flutter.io'

//         //child: Text('Hello'),
//      //   padding: EdgeInsets.only(left: 10.0, right: 10.0),

//                       )),
//                   new Container(
//                      // padding: const EdgeInsets.only(right:20.0,left: 20.0, top: 190.0),
// //                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
//                         padding: const EdgeInsets.only(bottom:  20.0,top: 25.0),
//                         child: new RaisedButton(
//                         child: new Text('CONTINUE',style: new TextStyle(color: Colors.white),),
//                         color: Colors.blue,
//                         splashColor: Colors.blueAccent,
//                         onPressed: ()
//                        // {                 //       if(_data.Navigator.of(context).pushNamed('/Register');}
//                         {
//                       if (_data.isregistered==false){
//                         Navigator.of(context).pushNamed('/Register');
//                         }
//                         else
//                         Navigator.of(context).pushNamed('/Dashboard1');
//                           }

//                   //      onPressed: () {Navigator.of(context).pushNamed('/Register');}
//                       //  onPressed: () {Navigator.of(context).pushNamed('/Prac1');}
//                       )
//                       ),
//                 ],
//               )
//               )
//               ),
//     );
//   }

//  }
