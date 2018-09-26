
// import 'package:flutter/material.dart';

// // import 'view/Homescreen1.dart';
// // import "view/RegisterScreen.dart";
// import 'package:flutter/cupertino.dart';
// //import 'package:Model';
// import 'package:myapp/Model/credential.dart';
// import 'package:myapp/Model/Registerationdata.dart';

// class AppComponent extends StatefulWidget {
//   @override
//   _AppComponentState createState() => new _AppComponentState();
// }

// class _AppComponentState extends State<AppComponent> implements CredentialProvider {

// //Credential credential;
// Registerationdata register;

//   @override
//   Widget build(BuildContext context) {
//     if ( register == null) {
//       return new MaterialApp(
//         routes: <String, WidgetBuilder>{
        
// '/Register'            : (BuildContext context) => new RegisterationScreen(),
// '/Filecomplaint1'      : (BuildContext context) => new Filecomplaint1(),
// '/Prac1'               : (BuildContext context) => new MyApp(),
//         //  '/': (BuildContext context) => new RegisterScreen(this),
//         },
//       );
//     } else {
//       return new MaterialApp(
//         routes: <String, WidgetBuilder>{
          
// '/Homescreen1'         : (BuildContext context) => new Homescreen1(),
//       //    '/': (BuildContext context) => new Desktop(credential),
          
//         },
//       );
//     }
//   }

//   @override
//   void setCredential(Registerationdata s) {
//     setState(() {
//       register = s;
//     });
//   }
// }