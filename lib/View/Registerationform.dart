import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'EnsureVisibleWhenFocused.dart';
import 'dart:io';
// import 'package:flutter/services.dart';
 import 'package:shared_preferences/shared_preferences.dart';
 //import 'dart:async';
// import 'package:http/http.dart' as http;



export 'dart:ui' show AppLifecycleState, VoidCallback;

class Registerationform extends StatefulWidget {
  @override
  RegisterationformState createState() => new  RegisterationformState();
}
class RegisterationformState  extends State< Registerationform> {
   FocusNode _focusNodeCityName = new FocusNode();
    FocusNode _focusNodeEmailtName = new FocusNode();
    //FocusNode _focusNodeDescription = new FocusNode();

    static final TextEditingController _cityNameController = new TextEditingController();
    static final TextEditingController _emailNameController = new TextEditingController();
   // static final TextEditingController _descriptionController = new TextEditingController();

bool loggedIn = false;
 SharedPreferences sharedPreferences;
_onRegistered(bool value) async {
  sharedPreferences = await SharedPreferences.getInstance();
  setState(() {
    loggedIn = value;
    sharedPreferences.setBool(" loggedIn", loggedIn );
    // sharedPreferences.setString("username", username.text);
    // sharedPreferences.setString("password", password.text);
     sharedPreferences.commit();
    //getCredential();
  });
}

  File image;
  picker() async {
    print('Picker is called');
    // File img = await ImagePicker.pickImage(source: ImageSource.camera);
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  final nameController = new TextEditingController();

//  String _phone, _name, _email, _username, _password, _age;

  String _phone='',_name='',_email='',_age='',_nic='',_city='';

  final formKey = new GlobalKey<FormState>();
  final mainKey = new GlobalKey<ScaffoldState>();
  static var _listViewScrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new Scaffold(
        key: mainKey,
        //appBar: new AppBar(title: new Text("Women Media Complaint Cell")),
       // body: 
              body: new SafeArea(
              top: false,
         bottom: false,    
             
//   new Padding(
//             //  padding: EdgeInsets.symmetric(horizontal: 2.0),
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
// //if
            ///padding: EdgeInsets.(10.0),
            child: loggedIn == false
                ? new Form(
//      autovalidate:false,
                    key: formKey,
                    // child: new Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   mainAxisSize: MainAxisSize.max,
                     child: new ListView(
                    //  reverse: true,
                    
 // reverse: true, //this line reverse the list
  controller: _listViewScrollController,
                       children: <Widget>[
        
                 new Text("Create Your Account",
                        style: new TextStyle(
                            decorationColor: Colors.black, fontSize: 20.0)),
                 new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          
                 ),


          //child: 
          // new GestureDetector(
          //   onTap: () {
          //     SchedulerBinding.instance.addPostFrameCallback((_) {
          //       _listViewScrollController.jumpTo(
          //        _listViewScrollController.position.maxScrollExtent);
         
          //     });
          //   },
          // ),


                        new TextFormField(
                          autofocus: false,
                          autocorrect: false,
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.phone),
                            labelText: "Phone Number*:",
                           // filled: true,
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (str) {
//if (value.length>10 && value.length<15) {

                            if (str.length <= 10) {
                              return 'The number length must be in range 11-14.';
                            } else if (str.length >= 14) {
                              return 'The number length must be in range 11-14.';
                            }
                            return null;
                          }, // =>
                          //  (str.length > 10 || str.length < 15) ? "Not a Valid Phone Number!" : null,
                          onSaved: (str) => _phone = str,
                        ),

                        new TextFormField(
                          autocorrect: false,
                          decoration: new InputDecoration(
                            labelText: "Name:",
                            icon: const Icon(Icons.person),
                          ),

                          keyboardType: TextInputType.text,
                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {

                            // if (str.length <= 2 && str.length > 0) {
                            //   return
                            //    'Not a valid Name.';
                            // } else 
                            if (str.isEmpty || str == null) {
                              return null;
                            }
                            return null;
                          },

                          // (str) =>
                          //     (str.length <= 5) ? "Not a Valid Name!":null,

                          onSaved: (str) => _name = str,
                        ),

                        new TextFormField(
                          autocorrect: false,
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.calendar_today),
                            labelText: "Age:",
                            filled: false,
                          ),
                          //maxLength: 2,
                          
                          keyboardType: TextInputType.number,
                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {

                            // if (str.length <= 3 && str.length > 0) {
                            //   return 'Not a valid age.';
                            // } else
                            
                             if (str.isEmpty || str == null) {
                              return null;
                            }
                            return null;
                          },
                          //       (str.length <= 2 ) ? "Not a Valid Age!" : null,
                          onSaved: (str) => _age = str,
                          //
                        ),

                        new TextFormField(
                          autocorrect: false,

                          decoration: new InputDecoration(
                            //      icon: const Icon(Icons.phone),
                            icon: const Icon(Icons.perm_identity),

                            labelText: "NIC:",
                          ),

                          keyboardType: TextInputType.number,
                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {

                            // if (str.length <= 12 && str.length > 0) {
                            //   return 'Not a valid NIC.';
                            // } else 
                            
                            if (str.isEmpty || str == null) {
                              return null;
                            }
                            return null;
                          },

                          // validator: (str) =>
                          //     (str.length <= 12 || null) ? "Not a Valid NIC!" : null,
                          onSaved: (str) => _nic = str,
                        ),


                                new EnsureVisibleWhenFocused(
                                    focusNode: _focusNodeCityName,
                      child: new TextFormField(
                          autocorrect: false,
                          decoration: new InputDecoration(
                            //   icon: const Icon(Icons.phone),

                            icon: const Icon(Icons.place),
                            labelText: "City:",
                          ),

                                        controller: _cityNameController,
                                        focusNode: _focusNodeCityName,
                          keyboardType: TextInputType.text,
                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {

                            // if (str.length <= 5 && str.length > 0) {
                            //   return 'Not a valid City name.';
                            // } else
                            // 
                             if (str.isEmpty || str == null) {
                              return null;
                            }
                            return null;
                          },

                          // validator: (str) =>
                          //    ( str.length <= 5 || null) ? "Not a Valid City!" : null,
                          onSaved: (str) => _city = str,
                        ),
                                ),



                                new EnsureVisibleWhenFocused(
                                    focusNode: _focusNodeEmailtName,
                      child: 
                        new TextFormField(
                          autocorrect: false,
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.email),
                            labelText: "Email:",
                          ),
                          
                                        controller: _emailNameController,
                                        focusNode: _focusNodeEmailtName,
                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {

                            // if (!str.contains('@') && str.length > 0) {
                            //   return 'Not a valid Email.';
                            // } else
                            
                             if (str.isEmpty || str == null) {
                              return null;
                            }
                            return null;
                          },
                          // validator: (str) =>
                          //    (!str.contains('@') || null )? "Not a Valid Email!" : null,
                          onSaved: (str) => _email = str,
                        ),
                                ),
                        // new TextFormField(
                        //   autocorrect: false,
                        //   decoration:new  InputDecoration(
                        //     labelText: "Username:",
                        //   ),
                        //   validator: (str) =>
                        //       str.length <= 5 ? "Not a Valid Username!" : null,
                        //   onSaved: (str) => _username = str,
                        // ),

                        /*new TextFormField(
                        autocorrect: false,
                        decoration:new InputDecoration(
                          labelText: "Password:",
                        ),
                        validator: (str) =>
                            str.length <= 7 ? "Not a Valid Password!" : null,
                        onSaved: (str) => _password = str,
                        obscureText: true,
                      ),
                      */
                        new Text("Profile Photo",
                            style: new TextStyle(
                                decorationColor: Colors.black, fontSize: 15.0)),
                        new Row(
                          children: <Widget>[
                            new Container(
                              child: new Center(
                                child: image == null
                                    ? new Text('No Image to Show ')
                                    : new Image.file(image,
                                        width: 100.0, height: 40.0),
                              ),
                            ),

                            new Icon(Icons.attachment),

//new FloatingActionButton(
                            new FlatButton(
                                onPressed: picker,
                                child: //new Icon(Icons.attachment),
                                    new Text('Add Attachment')),
                          ], //.reversed.toList(),
                        ),

                        new RaisedButton(
                          child: new Text("Register"),
                          onPressed: onPressed,
                        ),
                 
                 
                 
                      ]
                      //.reversed.toList(),
                 
                 
                    ),
                  )
                
                : //new Center(
                new Column(
                    //height:  MediaQuery.of(context).size.height/3,
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/Filecomplaint1');
                          print("Container clicked");
                        },
                        child: new AspectRatio(
                          aspectRatio: 16 / 9,
                          child: new Container(
                            height: MediaQuery.of(context).size.height / 3,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10.0),
                            //   width: 500.0,
                            //  decoration: new BoxDecoration(
                            //     //color: Colors.grey.shade200.withOpacity(0.3),
                            //     borderRadius: new BorderRadius.circular(5.0),
                            //   ),
                            //      padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                            color: Colors.orange, //.shade200.withOpacity(1.0),
                            //padding: const EdgeInsets.only( bottom: 20.0,top: 140.0),
                            child: new Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.end,

                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  new Icon(Icons.featured_play_list),
                                  new Text(
                                    "File the complaint",
                                    style: new TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      //color: new Color(0xFF26C6DA)
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),

                      new GestureDetector(
                        onTap: ()
//{  Navigator.of(context).pushNamed('/Prac1');       },

                            {
                          Navigator.of(context).pushNamed('/SettingsScreen');
                        },
                        child: new AspectRatio(
                          aspectRatio: 16 / 9,
                          child: new Container(
                            height: MediaQuery.of(context).size.height / 3,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5.0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10.0),

                            //width: 500.0,
                            //width:MediaQuery.of(context).size.width,
                            //    padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                            color: Colors.green,
                            //padding: const EdgeInsets.only( bottom: 20.0,top: 140.0),
                            child: new Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,

//                         mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  new Icon(Icons.history),
                                  new Text(
                                    "Complaint History",
                                    style: new TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      //color: new Color(0xFF26C6DA)
                                    ),
                                  ),
                                ]),
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
                              child: new GestureDetector(
                                onTap: () {
                                  //onPressed: () {Navigator.of(context).pushNamed('/SettingsScreen');}
                                  //Navigator.of(context).pushNamed('/SettingsScreen');

//   Navigator.of(context).pushNamed('/MyAppdate');
                                  Navigator
                                      .of(context)
                                      .pushNamed('/UpdateScreen');
                                },
//  s
                                child: new Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  // margin: const EdgeInsets.only(top: 8.0),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 5.0),
                                  //    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                  ///////////////////////////////////////////////////////////////////////////////
                                  //    padding: const EdgeInsets.all(48.0),
                                  padding: const EdgeInsets.only(
                                      bottom: 100.0, top: 25.0),
                                  //  height:MediaQuery.of(context).size.height/4,
                                  width: MediaQuery.of(context).size.width / 2,
                                  color: Colors.blueGrey,
                                  child: new Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,

//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//mainAxisAlignment: MainAxisAlignment.center,

                                      //   mainAxisSize: MainAxisSize.min,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        new Icon(Icons.settings),
                                        new Text(
                                          "Settings",
                                          style: new TextStyle(
                                            fontSize: 20.0,
                                            fontFamily:
                                                'Roboto', //color: new Color(0xFF26C6DA)
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            new GestureDetector(
                              onTap: ()
//{   Navigator.of(context).pushNamed('/MyHomePage'); },

                                  {
                                Navigator.of(context).pushNamed('/Alerts');
                              },
                              child: new Container(
                                height: MediaQuery.of(context).size.height / 3,

                                //              margin: const EdgeInsets.only(top: 8.0),
//    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                padding: const EdgeInsets.only(
                                    bottom: 100.0, top: 25.0),
                                ////////////////////////////////////
                                // padding: const EdgeInsets.all(50.0),
                                width: MediaQuery.of(context).size.width / 2,
                                // height:MediaQuery.of(context).size.height/4,

                                color: Colors.blue,
                                child: new Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                                    size: 12.0,
                                                    color: Colors.red[800]),
                                                new Positioned(
                                                  top: 1.0,
                                                  right: 4.0,
                                                  //child: new Text("item_count",
                                                  child: new Text("1",
                                                      style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 6.0,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                      //        new Icon(Icons.notifications_active),
                                      new Text(
                                        "Suggested News",
                                        style: new TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'Roboto',
                                          //color: new Color(0xFF26C6DA)
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ]),

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
/*
                  child:new Column(
                    children: <Widget>[
                      new Text("Welcome $_username"),
                      new RaisedButton(
                        child: new  Text("Log Out"),
                        onPressed: () {
                          setState(() {
                            loggedIn = false;
                          });
                        },
                      )
                    ],
                  ),
*/
            ) // ),
        );    
  }

  void onPressed() {
    var form = formKey.currentState;

    if (form.validate()) {
      form.save();
      setState(() {
        _onRegistered(true);
       // loggedIn = true;
      });

      var snackbar = new SnackBar(
        content: new Text(
            'Name:$_name,age:$_age, Number:$_phone,NIC: $_nic, City: $_city, Email: $_email'),
        duration: new Duration(milliseconds: 5000),
      );

      mainKey.currentState.showSnackBar(snackbar);
    }
  }
}
