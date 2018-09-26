import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
// //import 'package:validate/validate.dart';
// import 'package:myapp/model/Registerationdata.dart';
// import 'package:WMCCs/Model/credential.dart';
//import 'registeration';
//import 'strings.dart';//

//import 'dart:convert';
/*
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
*/
class Registerationdata {
  bool isregistered = false; //default not registered

  //String phone = '';
  int phone;
  String name;
  String age;
  String cnic;
  String city;
  String email;
  final String profileImgUrl;

//final String thumbnailUrl;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Constructor
  Registerationdata(
      {this.phone,
      this.name,
      this.age,
      this.cnic,
      this.city,
      this.email,
      this.profileImgUrl});

/*
Upload(File imageFile) async {    
    var stream = new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
      var length = await imageFile.length();

     // var uri = Uri.parse(uploadURL);

     var request = new http.MultipartRequest("POST", uri);
      var multipartFile = new http.MultipartFile('file', stream, length,
          filename: basename(imageFile.path));
          //contentType: new MediaType('image', 'png'));

      request.files.add(multipartFile);
      var response = await request.send();
      print(response.statusCode);
   //   response.stream.transform(utf8.decoder).listen((value) {
       // print(value);
  */
  //}
  // );//
}

// var form = document.getElementById('uploadForm'),
//   imageInput = document.getElementById('img1');
//Future<Uint8List> Image.toByteData();
//Future<Uint8List> Picture.toByteData();
//String password = '';
//}

class UpdateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new UpdateScreenState();
}

class UpdateScreenState extends State<UpdateScreen> {
  File image;
//Create form with a Global key
//Global
  final _formKey = new GlobalKey<FormState>();
  final myPhoneController = new TextEditingController();

// FormType _formType=FormType.Register;
  Registerationdata data = new Registerationdata();
//credential c=new credential();

  @override
  void initState() {
    super.initState();
    myPhoneController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    myPhoneController.removeListener(_printLatestValue);
    myPhoneController.dispose();
    super.dispose();
  }

  storephonevalue() {}

  _printLatestValue() {
    print("Second text field: ${myPhoneController.text}");
  }

  void validateandregister() {}

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();
//       {Navigator.of(context).pushNamed('/Dashboard1');}
      // Save our form now.
      print('Printing the login data.');
      //   print('Email: ${_data.email}');
      //  print('Password: ${_data.password}');
    }
  }

  picker() async {
    print('Picker is called');
    // File img = await ImagePicker.pickImage(source: ImageSource.camera);
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }
/*

  String _validatePhone(String value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.
    try {
      Validate.isEmail(value);
      //Validate.isEmail(null);

    } catch (e) {
      return 'The phone number must be a valid phone number';
    }
    return null;
  }*/
/*
  String _validateEmail(String value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.
    try {
      //   Validate.isEmail(value);
      Validate.isEmail(null);
    } catch (e) {
      return 'The E-mail Address must be a valid email address.';
    }

    return null;
  }
*/
/*
  String _validateAge(String value) {
    if (value.length < 0) {
      return 'The Age must be greater than 0.';
    }
    return null;
  }
*/

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Women's Media Complaint Cell"),
        //title: new Text(Title.appTitle),
      ),


      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              //  key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  // Center(
                  new Container(
                    padding: const EdgeInsets.only(left: 60.0, top: 20.0),
                    child: new Text("Update",
                        style: new TextStyle(
                            decorationColor: Colors.black, fontSize: 20.0)),
                  ),

                  new TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.phone),
        
                    //    hintText: 'Enter your phone number',
                        labelText: 'Phone Number *',
                      ),
                      keyboardType: TextInputType.phone,
                      controller: myPhoneController,
                      validator:null, 
                      // (value) => value.isEmpty
                      //     ? 'Phone Number can not be Empty'
                      //     : null,
                      // // this._validatePhone,
                      onSaved: (String value) {
                        data.phone = int.parse(value);
                        data.isregistered = true;
                      },
                      inputFormatters: [
                        // WhitelistingTextInputFormatter.digitsOnly,
                      ]),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      //hintText: 'Enter your Name',
                      labelText: 'Name',
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      //hintText: 'Enter your Age',
                      labelText: 'Age',
                    ),
                    keyboardType: TextInputType.number,
                    //keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_identity),
                      //hintText: 'Enter your NIC',
                      labelText: 'NIC',
                    ), //phone  !!!!!
                    keyboardType: TextInputType.phone,
                    // inputFormatters: [
                    // WhitelistingTextInputFormatter.digitsOnly,
                    //],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.place),
                      //hintText: 'Enter your city',
                      labelText: 'City',
                    ), //EMAILLLLLLLLLLLLLLLLLLLLL
                    keyboardType: TextInputType.text,
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      // hintText: 'Enter your Email',
                      labelText: 'Email',
                    ), //EMAILLLLLLLLLLLLLLLLLLLLL
                    //validator: //this.
                    // _validateEmail,
                    // onSaved: (String value) {
                    //ss   this._data.email = value;
                    //}

//                    keyboardType: TextInputType.emailAddress,
                  ),

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

//                   ),
                  new Container(
                      padding: const EdgeInsets.only(left: 00.0, top: 20.0),
                      child: new RaisedButton(
                          color: Colors.blue,
                          child: new Text('Update',
                              style: new TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            this.submit;
                          }

//                           {                            // if (data.isregistered){// if registered go to Dashboard
                          //     Navigator.of(context).pushNamed('/Dashboard1');
                          //     }
                          //  else if (!data.isregistered){
                          //     Navigator.of(context).pushNamed('/Register');
                          //     }

                          //     }

                          )),
                ],
              ))),
    );
  }
}

List<Widget> builtRegisterForm() {
  return [
    new TextFormField(
        decoration: const InputDecoration(
          icon: const Icon(Icons.phone),
          // validator:
          hintText: 'Enter your phone number',
          labelText: 'Phone Number',
        ),
        keyboardType: TextInputType.phone,
        validator: (value) =>
            value.isEmpty ? 'Phone Number can not be Empty' : null,
        // this._validatePhone,
        onSaved: (String value) {
          //   this._data.phone = value;
          // this._data.isregistered = true;
        },
        inputFormatters: [
          // WhitelistingTextInputFormatter.digitsOnly,
        ]),
    new TextFormField(
      decoration: const InputDecoration(
        icon: const Icon(Icons.person),
        //hintText: 'Enter your Name',
        labelText: 'Name',
      ),
      keyboardType: TextInputType.text,
    ),
    new TextFormField(
      decoration: const InputDecoration(
        icon: const Icon(Icons.calendar_today),
        //hintText: 'Enter your Age',
        labelText: 'Age',
      ),
      keyboardType: TextInputType.number,
      //keyboardType: TextInputType.datetime,
    ),
    new TextFormField(
      decoration: const InputDecoration(
        icon: const Icon(Icons.perm_identity),
        //hintText: 'Enter your NIC',
        labelText: 'NIC',
      ), //phone  !!!!!
      keyboardType: TextInputType.phone,
      // inputFormatters: [
      // WhitelistingTextInputFormatter.digitsOnly,
      //],
    ),
    new TextFormField(
      decoration: const InputDecoration(
        icon: const Icon(Icons.place),
        //hintText: 'Enter your city',
        labelText: 'City',
      ), //EMAILLLLLLLLLLLLLLLLLLLLL
      keyboardType: TextInputType.text,
    ),
    new TextFormField(
      decoration: const InputDecoration(
        icon: const Icon(Icons.email),
        // hintText: 'Enter your Email',
        labelText: 'Email',
      ), //EMAILLLLLLLLLLLLLLLLLLLLL
      //validator: //this.
      // _validateEmail,
      // onSaved: (String value) {
      //ss   this._data.email = value;
      //}

//                    keyboardType: TextInputType.emailAddress,
    
    ),
  ];
}
