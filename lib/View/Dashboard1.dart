import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:WMCCs/View/RegisterScreen.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _DashboardState1 createState() => new _DashboardState1();
}

class _DashboardState1 extends State<Dashboard1> {
@override
  Widget build(BuildContext context) {
SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

    return new Scaffold(
    
      /*appBar: new AppBar(
        title: new Text("Women's Media Complaint Cell"),
        //backgroundColor: const Color(0x00000000),
      ),
    */
    
      body: new SafeArea(
          top: false,
          bottom: false,    
         child: new Form(
           //onWillPop: ,
           // key: _formKey,
             autovalidate: true,
              child: new 
//              ListView(

Column(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: <Widget>[

new GestureDetector(
onTap: (){
  Navigator.of(context).pushNamed('/Filecomplaint1');
          print("Container clicked");
        },

 child: new AspectRatio(
  aspectRatio: 16/9,
      child:new Container(
      height:  MediaQuery.of(context).size.height/3,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          //   width: 500.0,
    //  decoration: new BoxDecoration(
    //     //color: Colors.grey.shade200.withOpacity(0.3),
    //     borderRadius: new BorderRadius.circular(5.0),
    //   ),
    //      padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                     color: Colors.orange,//.shade200.withOpacity(1.0),
                     //padding: const EdgeInsets.only( bottom: 20.0,top: 140.0),
                       child: new Column(
//                         mainAxisAlignment: MainAxisAlignment.end,        
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,

          mainAxisSize: MainAxisSize.min,

             crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [  
                new Icon(Icons.featured_play_list),
                new Text("File the complaint",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  //color: new Color(0xFF26C6DA)
                  ),),
              ]
          ),
                      ),

),


),




new GestureDetector(
onTap: ()
//{  Navigator.of(context).pushNamed('/Prac1');       },

 {Navigator.of(context).pushNamed('/SettingsScreen');},
 child: new AspectRatio(
  aspectRatio: 16/9,
        
          child:new Container(      
            height:  MediaQuery.of(context).size.height/3,
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      
             //width: 500.0,
             //width:MediaQuery.of(context).size.width,
      //    padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                     color: Colors.green,
                     //padding: const EdgeInsets.only( bottom: 20.0,top: 140.0),
                       child: new Column(
          mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                         mainAxisAlignment: MainAxisAlignment.end,        
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new Icon(Icons.history),
                new Text("Complaint History",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  //color: new Color(0xFF26C6DA)
                  ),),
              ]
          ),   
                      ),
),
),



////////////////////////////////////////////////////////////////////////////////


// new Expanded(
//   child:

//new Container(
//child: 

//////////////////////////////////////////////////////////////////////////////////////
new Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: <Widget>[
new Expanded(

child:new GestureDetector(
onTap: (){
                     //onPressed: () {Navigator.of(context).pushNamed('/SettingsScreen');}
  //Navigator.of(context).pushNamed('/SettingsScreen');
   
//   Navigator.of(context).pushNamed('/MyAppdate');
Navigator.of(context).pushNamed(
   '/UpdateScreen'
      );      },
//  s      
          child:new Container(
      
      height:  MediaQuery.of(context).size.height/3,
                 // margin: const EdgeInsets.only(top: 8.0), 
           margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
 //    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
  ///////////////////////////////////////////////////////////////////////////////
  //    padding: const EdgeInsets.all(48.0),
                          padding: const EdgeInsets.only(bottom:  100.0,top: 25.0),
      //  height:MediaQuery.of(context).size.height/4,
     width: MediaQuery.of(context).size.width/2,
      color: Colors.blueGrey,
      child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,



//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           
//mainAxisAlignment: MainAxisAlignment.center,

     //   mainAxisSize: MainAxisSize.min,
       // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Icon(Icons.settings),
                new Text("Settings",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',                  //color: new Color(0xFF26C6DA)
                  ),
                  ),
                  
                  ]
     
          ),
          ),


         ),

),


new GestureDetector(
onTap: ()
//{   Navigator.of(context).pushNamed('/MyHomePage'); },

   {Navigator.of(context).pushNamed('/Alerts');    },
          child:new Container(            
height:  MediaQuery.of(context).size.height/3,
      
  //              margin: const EdgeInsets.only(top: 8.0),
//    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                            padding: const EdgeInsets.only(bottom:  100.0,top: 25.0),
    ////////////////////////////////////
   // padding: const EdgeInsets.all(50.0),
       width: MediaQuery.of(context).size.width/2,
      // height:MediaQuery.of(context).size.height/4,
   
                     color: Colors.blue,
                       child: new Column(
          mainAxisSize: MainAxisSize.min,

             crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [                
/*  
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

*/

//icon: 
new Stack(
              children: <Widget>[
                new Icon(Icons.notifications),
                new Positioned(
                  top: .0,
                  right: 0.0,
                  child: new Stack(
                    children: <Widget>[
                      new Icon(Icons.brightness_1,
                      //    size: 18.0, color: Colors.red[800]),
                          size: 12.0, color: Colors.red[800]),
                      
                      
                      new Positioned(
                        top: 1.0,
                        right: 4.0,
                        //child: new Text("item_count",
                        child: new Text("1",
                        
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 6.0,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                )
              ],
            ),

  
        //        new Icon(Icons.notifications_active),
                new Text("Suggested News",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  //color: new Color(0xFF26C6DA)
                  ),),
              ]
          ),   
                      ),
),



              ]

          ),























//),
  
//),
            /*
new Stack(
  alignment: AlignmentDirectional.topStart,
  textDirection,
  fit: StackFit.loose,
  overflow: Overflow.clip,
  List<Widget> children: const <Widget>[
  ], ),
*/
                ],

              )
  //            )


  
              ),
    ),
              backgroundColor: Colors.white,
              
    );
  }
}