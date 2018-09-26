import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:intl/date_symbol_data_local.dart';

import 'package:intl/intl.dart';
class MyAppdate extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyAppdate> {

// Default date and time
  DateTime _date = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
 //String formatted = formatter.format(_date);
//   var now = new DateTime.now(); 
//   var formatter = new DateFormat('yyyy-MM-dd');//.format(now);
//  String formatts = formatter.format(now);
  //print(formatted); // something like 2013-04-20
 // DateTime _date = new DateFormat.yMMMd().format(new DateTime.now());
  //DateTime _date = new DateFormat.yMMd().format(new DateTime.now());
 // DateTime _date = formatDate (DateTime.now(), [dd, '/', mm, '/', yyyy, ' ', HH, ':', nn]);
//  DateTime _date = new DateFormat.yMd() ;

void method(){
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(now);
  print(formatted); // something like 2013-04-20
}

  TimeOfDay _time = new TimeOfDay.now();
//non blocking call
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019),
    );

//not null or default
    if(picked != null && picked != _date) {
   //   print('Date selected: ${_date.toString()}');
     // print(new DateFormat. yMd().format(new DateTime.now()));
      setState((){
        _date = picked;
      });
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time
    );

    if(picked != null && picked != _time) {
      //print('Time selected: ${_time.toString()}');
      setState((){
        _time = picked;
      });
    }
  }


////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Date picker Demo'),
      ),
 
        body: 
        
        
        new Container(
        padding: new EdgeInsets.all(32.0),
    
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          

          new Icon(Icons.calendar_today),

            new FlatButton(
                child: 
                //new Text('Select Date'),new Icon(Icons.calendar_today),
               new Text('${_date.toString().substring(0,10)}'),            
                           onPressed: (){_selectDate(context);
                           //method();
                           }
            ),
            //snew Text(' '),
            //new Text('Time${_time.toString()}'),
 
 /*new Row(
   new Expanded(
child:new Icon(Icons.calendar_today),


 children: <Widget>[

new Text(""data"")
 ],
   ),

 ),        
 */
new Icon(Icons.timer),
            new FlatButton(
                child: new Text('${_time.toString().substring(11,15)}'),
                onPressed: (){_selectTime(context);}
            ),
      ],
      ),
      ),




    );
  }
}

