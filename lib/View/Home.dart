// import 'package:flutter/material.dart';
// import 'package:online_order/src/Olacab.dart';
// import 'package:online_order/src/animatedlist.dart';
// import 'package:online_order/src/example.dart';
// import 'package:online_order/src/secondpage.dart';
// import 'package:online_order/src/tabdemo.dart';
// import 'package:online_order/src/thirdpage.dart';

// class Home extends StatelessWidget {
//   static String myapp = "myapp";

//   @override
//   Widget build(BuildContext context) {
//     var _routes = <String, WidgetBuilder>{
//       MultiTab.tabdemo: (BuildContext context) => new MultiTab(),
//       SecondPage.scpg: (BuildContext context) => new SecondPage(),
//       MyApps.tab: (BuildContext context) => new MyApps(),
//       Olacab.olacab: (BuildContext context) => new Olacab(),
//       Example.example: (BuildContext context) => new Example(),
//     AnimatedListSample.anim: (BuildContext context) => new AnimatedListSample(),
//     };

//     return new MaterialApp(
//       routes: _routes,
//       theme: new ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: new MyHomePage(
//         title: 'Online Pizza',
//       ),
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
//   static var listArrayAsset = [
//     'assets/lunch.jpg',
//     'assets/burger.jpg',
//     'assets/pizza.jpg',
//     'assets/food.jpg',
//     'assets/lunch.jpg',
//     'assets/burger.jpg',
//     'assets/pizza.jpg',
//     'assets/food.jpg',
//     'assets/lunch.jpg',
//     'assets/burger.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(
//           widget.title,
//           style: new TextStyle(color: Colors.redAccent),
//         ),
//         backgroundColor: Colors.amber,
//       ),
//       body: new Container(
//         decoration: new BoxDecoration(
//           image: new DecorationImage(
//             image: new AssetImage(listArrayAsset[2]),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: _getSuccessStateWidget(),
//       ),
//     );
//   }

//   Widget _getSuccessStateWidget() {
//     return new ListView.builder(
//         itemCount: 8,
//         itemBuilder: (context, index) {
//           return new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 new ListTile(
//                   title: new Card(
//                     elevation: 0.0,
//                     child: new Center(
//                       child: new Row(
//                         children: <Widget>[
//                           new Expanded(
//                             child: new Image.asset(
//                               listArrayAsset[index],
//                               fit: BoxFit.fill,
//                               height: 120.0,
//                               gaplessPlayback: true,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   onTap: () {
//                     _onPressed(index);
//                   },
//                 )
//               ]);
//         });
//   }

//   void _onPressed(int position) {
//     if (position == 1) {
//       Navigator.of(context).pushNamed(SecondPage.scpg);
//     } else if (position == 0) {
//       //Navigator.of(context).pushNamed(VideoPlayPause.cid);
//       Navigator.of(context).pushNamed(Example.example);
//     } else if (position == 2) {
//       Navigator.of(context).pushNamed(MultiTab.tabdemo);
//     } else if (position == 3) {
//       Navigator.of(context).pushNamed(MyApps.tab);
//     }
//     else if(position == 4)
//       {
//         Navigator.of(context).pushNamed(Olacab.olacab);
//       }
//     else if(position == 5)
//     {
//       Navigator.of(context).pushNamed(AnimatedListSample.anim);
//     }
//     else if(position == 6)
//     {
//       Navigator.of(context).pushNamed(AnimatedListSample.anim);
//     }
//     else if(position == 7)
//     {
//       Navigator.of(context).pushNamed(AnimatedListSample.anim);
//     }
//   }
// }