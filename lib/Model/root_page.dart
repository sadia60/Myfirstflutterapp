// import 'package:flutter/material.dart';
// //import 'auth.dart';
// import 'package:WMCCs/Model/auth.dart';

// import 'login_page.dart';
// import 'home_page.dart';

// // import 'package:login/auth.dart';
// // import 'package:login/login_page.dart';
// // import 'package:login/home_page.dart';


// class RootPage extends StatefulWidget {
//   RootPage({Key key, this.auth}) : super(key: key);
//   final BaseAuth auth;

//   @override
//   State<StatefulWidget> createState() => new _RootPageState();
// }

// // enum AuthStatus {
// //   notSignedIn,
// //   signedIn,
// // }

// enum AuthStatus {
//   notRegistered,
//   isRegistered,
// }

// class _RootPageState extends State<RootPage> {

//   //AuthStatus authStatus = AuthStatus.notSignedIn;
// AuthStatus authStatus = AuthStatus.notRegistered;// .notSignedIn;

//   /*initState() {
//     super.initState();
// widget.auth.Registeraccount().then(phone) {   //   currentUser().then((userId) {
//       setState(() {
//         authStatus = phone != null ? AuthStatus.isRegistered : AuthStatus.notRegistered;// .notSignedIn;
//       });
    
//     // widget.auth.currentUser().then((userId) {
//     //   setState(() {
//     //     authStatus = userId != null ? AuthStatus.signedIn : AuthStatus.notSignedIn;
//     //   });
    
//     });
//   }
// */


// initState() {
//     super.initState();
//     widget.auth.Registeraccount(phone) .currentUser().then((userId) {
//       setState(() {
//         authStatus = userId != null ? AuthStatus.signedIn : AuthStatus.notSignedIn;
//       });
//     });
//   }


//   void _updateAuthStatus(AuthStatus status) {
//     setState(() {
//       authStatus = status;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     switch (authStatus) {
//       case AuthStatus.notRegistered: // .notSignedIn:
//         return new LoginPage(
//           title: 'Flutter Login',
//           auth: widget.auth,
//           onSignIn: () => _updateAuthStatus(AuthStatus.notRegistered),
//         );
//       case AuthStatus.isRegistered:
//         return new HomePage(
//           auth: widget.auth,
//           onSignOut: () => _updateAuthStatus(AuthStatus.isRegistered)
//         );
//     }
//   }
// }

