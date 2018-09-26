import 'package:flutter/material.dart';
import 'dart:io';
import 'EnsureVisibleWhenFocused.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
//import 'package:intl/date_symbol_data_local.dart';

import 'package:intl/intl.dart';

class Filecomplaint1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Filecomplaint1State();
}

class _Filecomplaint1State extends State<Filecomplaint1> {
  FocusNode _focusNodeUrl = new FocusNode();
  FocusNode _focusNodeComplanit = new FocusNode();
  FocusNode _focusNodeSuggestions = new FocusNode();

  static final TextEditingController _urlController =
      new TextEditingController();
  static final TextEditingController _complaintController =
      new TextEditingController();
  static final TextEditingController _suggestionController =
      new TextEditingController();

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

  // Default date and time
  DateTime _date = new DateTime.now();

  //var formatter = new DateFormat('yyyy-MM-dd');
  // var formatter = new DateFormat('dd-MM-yyyy');

  var formatter = new DateFormat('yMd');

  //String formatted = formatter.format(_date);
//   var now = new DateTime.now();
//   var formatter = new DateFormat('yyyy-MM-dd');//.format(now);
//  String formatts = formatter.format(now);
  //print(formatted); // something like 2013-04-20
  // DateTime _date = new DateFormat.yMMMd().format(new DateTime.now());
  //DateTime _date = new DateFormat.yMMd().format(new DateTime.now());
  // DateTime _date = formatDate (DateTime.now(), [dd, '/', mm, '/', yyyy, ' ', HH, ':', nn]);
//  DateTime _date = new DateFormat.yMd() ;

//for date
  void method() {
    var now = new DateTime.now();
    //var formatter = new DateFormat('yyyy-MM-dd');
    var formatter = new DateFormat('yMd');
    String formatted = formatter.format(now);
    print(formatted); // something like 2013-04-20
  }

  TimeOfDay _time = new TimeOfDay.now();
//non blocking call
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      //Default date
      //initialDate: _date,
      //       initialDate: new DateTime.now(),
      initialDate: new DateTime.now(),
      //date start limit of our calender
      firstDate: new DateTime(2000),
      // lastDate: new DateTime(2018),
      lastDate: new DateTime.now(),
    );

//not null or default
    if (picked != null && picked != _date) {
      //   print('Date selected: ${_date.toString()}');
      // print(new DateFormat. yMd().format(new DateTime.now()));
      setState(() {
        _date = picked;
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        //Default value
        initialTime: _time);

    if (picked != null && picked != _time) {
      //print('Time selected: ${_time.toString()}');
      setState(() {
        _time = picked;
      });
    }
  }

// final f = new DateFormat('yyyy-MM-dd hh:mm');

// Text(f.format(new DateTime.fromMillisecondsSinceEpoch(values[index]["start_time"]*1000)));

  String _value; //= null;
  List<String> _values = new List<String>();


  String _complaintscat; //= null;
  List<String> _complaintscategories = new List<String>();
//  String _mediatype = '';
//  List<String> _allmediatypes =<String>[" ","News", "Entertainment", "Advertisement"];
  //String _medianame = '';
  //List<String> _allmedianame =<String>['',"TV", "Radio", "Social Media"];

  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    _values.addAll(["Bryan", "Chris", "Heather", "Tammy"]);
    _value = _values.elementAt(0);


    _complaintscategories.addAll(["Right to Privacy", "Senasationalized News Content",
     "Sexual Objectification/Insensitive Pictorial Depiction", "Projection of negative gender roles in Advertisements",
     "Promoting gender stereotypes","Sexist, misogynist and violent overtones","Maintaining Professional Standards",
     "Insensitive / Derogatory Language"
     ]);
    _complaintscat =  _complaintscategories.elementAt(0);



    ttext = 'click on this button';
    super.initState();
  }

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  void method1() {
    setState(() {
      ttext = 'The text is been Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("File a Complaint"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              //            key: _formKey,
              autovalidate: true,
              child: new ListView(
                // reverse:true,

                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                children: <Widget>[
                  // Center(
                  new Text("Content Occurence Time *",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          decorationColor: Colors.black,
                          fontSize: 15.0)),
                  new Container(
                    decoration: new BoxDecoration(
                        border: new Border.all(color: Colors.black)),

                    //    padding: new EdgeInsets.all(32.0),
                    padding: new EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Icon(Icons.calendar_today),
                        new FlatButton(
                            child:
                                new Text('${_date.toString().substring(0,10)}'),
                            onPressed: () {
                              _selectDate(context);
                            }),
                        new Icon(Icons.timer),
                        new FlatButton(
                            child: new Text(
                                '${_time.toString().substring(10,15)}'),
                            onPressed: () {
                              _selectTime(context);
                            }),
                      ],
                    ),
                  ),
//////////////////////////////////////////////////

                  new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                    children: [
                      new Text("Media Type *",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.black,
                              fontSize: 15.0)),
                      new DropdownButton(
                        value: _value,
                        items: _values.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Row(
                              children: <Widget>[
                                //new Icon(Icons.home),
                                new Text('$value')
                                //     new Text('Person: $value')
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          _onChanged(value);
                        },
                      ),

                      //        ),
                      /*                new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_media),
                      labelText: 'Media Type',
                    ),

                    isEmpty:_mediatype == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_mediatype,
                        isDense: true,
                        //hint: new Text('Select Media Type'),
                        
                        onChanged: (String newValue) {
                          setState(() {
                            _mediatype = newValue;
                          });
                        },
                        items: _allmediatypes.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

*/
// new Center(              child:                new Text(
//               "Media Name *",
//               style: new TextStyle(fontWeight: FontWeight.bold,
//               decorationColor: Colors.black,fontSize: 15.0)

//               ),
// ),
                    ],
                  ),

                  new Container(
                    padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Media Name *",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),

                        new TextFormField(
//                obscureText: true, // Use secure text for passwords.
                          decoration: new InputDecoration(
                              // hintText: 'News,Channels etc',
                              labelText: 'Enter Media Name'),

                          validator: (str) //=>
                              {
//if (value.length>10 && value.length<15) {
                            //if (str.length <= 5 && str.length > 0) {
                            //    return 'Not a valid Name.';
                            //} else
                            if (str.isEmpty || str == null) {
                              return null;
                              // return 'Enter Complaint';
                            }
                            return null;
                          }, // validator: this._validatePassword,
                          // onSaved: (String value) {
                          //   this._data.password = value;
                          // }
                        ),

                        new Text("URL",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),

                        // new TextField(
                        // ),
                        new EnsureVisibleWhenFocused(
                          focusNode: _focusNodeUrl,

                          child: new TextFormField(
//              obscureText: true, // Use secure text for passwords.
                            decoration: new InputDecoration(
                                //hintText: 'URL',
                                labelText: 'Enter URL'),
                            controller: _urlController,
                            focusNode: _focusNodeUrl,
                          ),
                          // validator: this._validatePassword,
                          // onSaved: (String value) {
                          //   this._data.password = value;
                          // }
                        ),
                        new Text("Attach Evidence",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.attachment),
                            new FlatButton(
                              color: Colors.white10,
                              //icon:Icons.attachment,
                              child:
                                  //            new Text('${_date.toString().substring(0,10)}'),
                                  new Text('Add Attachment'),
                              onPressed: picker,
                            ),
                          ],
                        ),

                        new Text("Complaint Category *",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),

                        /*                new InputDecorator(
                    decoration: const InputDecoration(
                     // icon: const Icon(Icons.compare),
                      labelText: 'Complaint Category',
                    ),
                    isEmpty:_mediatype == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_mediatype,
                        isDense: true,
                  //      hint: new Text('Select Media Type'),
                        onChanged: (String newValue) {
                          setState(() {
                            _mediatype = newValue;
                          });
                        },
                        items: _allmediatypes.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),*/
                        new DropdownButton(
                          value: _complaintscat,
                          items: _values.map((String value) {
                            return new DropdownMenuItem(
                              value: value,
                              child: new Row(
                                children: <Widget>[
                                  //                        new Icon(Icons.home),
                                  new Text('$value')
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (String value) {
                            _onChanged(value);
                          },
                        ),

                        new Text("Complaint *",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),

                        new EnsureVisibleWhenFocused(
                          focusNode: _focusNodeComplanit,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Complaints',
                            ),
                            keyboardType: TextInputType.text,
                            controller: _complaintController,
                            focusNode: _focusNodeComplanit,
                          ),
                        ),

                        new Text("Suggestions",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.black,
                                fontSize: 15.0)),

                        new EnsureVisibleWhenFocused(
                          focusNode: _focusNodeSuggestions,
                          child: new TextFormField(
                            decoration: const InputDecoration(
                              //icon: const Icon(Icons.person),
//                      hintText: 'Enter your Name',
                              labelText: 'Suggestions',
                            ),
                            keyboardType: TextInputType.text,
                            controller: _suggestionController,
                            focusNode: _focusNodeSuggestions,
                          ),
                        ),


                  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0,bottom: 20.0),
                      child: new RaisedButton(
                      
                      color: Colors.blue,
                        child: const Text('SUBMIT COMPLAINT'),
                        onPressed: (){
                        
                      Navigator.of(context).pushNamed('/Dashboard1');
                      }


                      )),


                      ],
                    ),
                  ),

/////////////////////////////////////////////////////////////////
                  /*new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 

                      
            new Text(
              "URL",
              style: new TextStyle(fontWeight: FontWeight.bold,
              decorationColor: Colors.black,fontSize: 15.0)
              ),         
                   ),
                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child:      
            new Text(
              "Filling Time",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),

                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_media),
                      labelText: 'Media Type',
                    ),
                    isEmpty:_mediatype == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_mediatype,
                        isDense: true,
                        hint: new Text('Select Media Type'),
                        onChanged: (String newValue) {
                          setState(() {
                            _mediatype = newValue;
                          });
                        },
                        items: _allmediatypes.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

            new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Media Type",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),


                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_media),
                      labelText: 'Media Type',
                    ),
                    isEmpty:_mediatype == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_mediatype,
                        isDense: true,
                        hint: new Text('Select Media Type'),
                        onChanged: (String newValue) {
                          setState(() {
                            _mediatype = newValue;
                          });
                        },
                        items: _allmediatypes.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),



                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Media Name",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),


                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_media),
                      labelText: 'Media Name',
                    ),
                    isEmpty:_medianame == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_medianame,
                        isDense: true,
                        hint: new Text('Select Media Type'),
                        onChanged: (String newValue) {
                          setState(() {
                            _medianame = newValue;
                          });
                        },
                        items: _allmedianame.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),



  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Attach Evidence",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
         


                    //new Icon(Icons.perm_media),
         
                   ),

  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Complaint Category",
              style: new TextStyle(fontWeight: FontWeight.bold,
              decorationColor: Colors.black,fontSize: 15.0)
              
                          
              ),
         
                   ),
                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_media),
                      labelText: 'Media Type',
                    ),
                    isEmpty:_mediatype == 'Select',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value:_mediatype,
                        isDense: true,
                        hint: new Text('Select Media Type'),
                        onChanged: (String newValue) {
                          setState(() {
                            _mediatype = newValue;
                          });
                        },
                        items: _allmediatypes.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

*/

/*
  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Complaint",style: new TextStyle(fontWeight: FontWeight.bold , decorationColor: Colors.black,fontSize: 15.0)),
                   ),

      new TextFormField(
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.person),
//                      hintText: 'Enter your Name',
                      labelText: 'Complaints',
                    ),
                    keyboardType: TextInputType.text,
                  ),
*/

//   new Container(
//                       padding: const EdgeInsets.only(left: 00.0, top: 20.0),
//                       child:
//             new Text(
//               "Suggestion",style: new TextStyle(fontWeight: FontWeight.bold , decorationColor: Colors.black,fontSize: 15.0)),
//                    ),

//       new TextFormField(
//                     decoration: const InputDecoration(
//                       //icon: const Icon(Icons.person),
// //                      hintText: 'Enter your Name',
//                       labelText: 'Suggestions',
//                     ),
//                     keyboardType: TextInputType.text,
//                   ),

                  /*              
                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.color_lens),
                      labelText: 'Color',
                    ),
                    isEmpty: _color == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _color,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _color = newValue;
                          });
                        },
                        items: _colors.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
*/
                  //     new Container(
                  //           padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                  //           child:
                  // new Text(
                  //   "Profile Photo",style: new TextStyle(decorationColor: Colors.black,fontSize: 15.0)),
                  //        ),

                  new Container(
                      padding: const EdgeInsets.only(
                          right: 50.0, left: 50.0, top: 20.0, bottom: 20.0),
                      child: new RaisedButton(
                          color: Colors.blue,
                          child: const Text('SUBMIT COMPLAINT'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/Dashboard1');
                          })),
                ],
              ))),
    );
  }
}

/*
class Filecomplaint1 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(
     title: new Text("Complaint"),
      ),
 


  body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
  //            key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
             // Center(
               
                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Filling Time",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),

                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Media Type",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),




                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Media Name",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),

  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Attach Evidence",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),

  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Complaint Category",style: new TextStyle(fontWeight: FontWeight.bold,decorationColor: Colors.black,fontSize: 15.0)),
                   ),

  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Complaint",style: new TextStyle(fontWeight: FontWeight.bold , decorationColor: Colors.black,fontSize: 15.0)),
                   ),



  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Suggestion",style: new TextStyle(fontWeight: FontWeight.bold , decorationColor: Colors.black,fontSize: 15.0)),
                   ),



      new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your Name',
                      labelText: 'Name',
                    ),
                    keyboardType: TextInputType.text,
                  ),

                /*
                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.color_lens),
                      labelText: 'Color',
                    ),
                    isEmpty: _color == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _color,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _color = newValue;
                          });
                        },
                        items: _colors.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: 
            new Text(
              "Profile Photo",style: new TextStyle(decorationColor: Colors.black,fontSize: 15.0)),
                   ),




                  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: new RaisedButton(
                      
                      color: Colors.blue,
                        child: const Text('SUBMIT COMPLAINT'),
                        onPressed: null,
                      )),
                ],
              
              ))),
    );
  }
}
*/
*/
