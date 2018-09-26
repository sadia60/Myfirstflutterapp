import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class Registerationdata {
  bool isregistered = false; //default not registered

  //String phone = '';
  int phone=0000;
  String name='';
  String age='';
  String cnic='';
  String city='';
  String email='';
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

class RegisterationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RegisterationScreenState();
}

class RegisterationScreenState extends State<RegisterationScreen> {

  File image;
  final _formKey = new GlobalKey<FormState>();
  final myPhoneController = new TextEditingController();
 final mainKey = new GlobalKey<ScaffoldState>();
 Registerationdata data = new Registerationdata();

  String _phone='',_name='',_email='',_age='',_nic='',_city='';
  //initially not registered
  bool userregistered=false;

  @override
  void initState() {
    super.initState();
   _loadCounter();
    myPhoneController.addListener(_printLatestValue);
  }

Future<http.Response> fetchPhotos(http.Client client) async {
  //return client.get('https://jsonplaceholder.typicode.com/photos');
 return client.get('https://uks.mybluemix.net/registrationAPI');
}

 //Loading counter value on start Checks if the user is not registered
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      //not registered check
      userregistered = (prefs.getBool('userregistered') ?? false);
    });
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



  void onPressed()
   {
      
      var snackbar = new SnackBar(
        content:
           new Text('Name:$_name,age:$_age, Number:$_phone,City: $_city, Email: $_email, nic: $_nic'),
        duration:new  Duration(milliseconds: 5000),
      );

      mainKey.currentState.showSnackBar(snackbar);
     // persist(false);
      {Navigator.of(context).pushNamed('/Dashboard1' );}


    }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new Scaffold(
      key: mainKey,
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
              //child: new               Column(
                //padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  // Center(
                  new Container(
                    padding: const EdgeInsets.only(left: 60.0, top: 20.0),
//child: new Text("Update my information",
                    child: new Text("Create Your Account",
                        style: new TextStyle(
                            decorationColor: Colors.black, fontSize: 20.0)),
                  ),

                  new TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.phone),
        
                    //    hintText: 'Enter your phone number',
                        labelText: 'Phone Number *',
                      ),
                     autofocus: true,
                      keyboardType: TextInputType.phone,
                      controller: myPhoneController,
                      validator:null, 
                      // (value) => value.isEmpty
                      //     ? 'Phone Number can not be Empty'
                      //     : null,
                      // // this._validatePhone,
                     // onSaved: (String value) {
                        // data.phone = int.parse(value);
                        // data.isregistered = true;
   onSaved: (str) => _phone = str,
                      //},
                      inputFormatters: [
                        // WhitelistingTextInputFormatter.digitsOnly,
                      ]),
                  new TextFormField(
 
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      //hintText: 'Enter your Name',
                      labelText: 'Name',
                    ),
     autofocus: true,
                    keyboardType: TextInputType.text,
     onSaved: (str) => _name = str,
    
                  ),


                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      //hintText: 'Enter your Age',
                      labelText: 'Age',
                    ),
                   autofocus: true,
                    keyboardType: TextInputType.number,
                   onSaved: (str) => _age= str,
                    //keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.perm_identity),
                      //hintText: 'Enter your NIC',
                      labelText: 'NIC',
                    ), //phone  !!!!!
                  autofocus: true,
                    keyboardType: TextInputType.phone,
                    onSaved: (str) => _nic= str,
                    // inputFormatters: [
                    // WhitelistingTextInputFormatter.digitsOnly,
                    //],
                  ),
                  new TextFormField(
                 //   TextEditingController:myPhoneController,
//                    TextEditingController:
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.place),
                      //hintText: 'Enter your city',
                      labelText: 'City',
                    ), //EMAILLLLLLLLLLLLLLLLLLLLL
                   autofocus: true,
                    keyboardType: TextInputType.text,
                  onSaved: (str) => _city= str,
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      // hintText: 'Enter your Email',
                      labelText: 'Email',
                    ), //EMAILLLLLLLLLLLLLLLLLLLLL
                    onSaved: (str) => _email= str,
                    autofocus: true,
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
                        child: new Text('Register',
                     //   child: new Text('Update',
                       
                              style: new TextStyle(fontSize: 20.0)),
                          onPressed: onPressed,
                       
                                              //   {Navigator.of(context).pushNamed('/Dashboard1' );}

                          // {        
                          //   this.submit;
                          // }

//                           {                            // if (data.isregistered){// if registered go to Dashboard
                          //     Navigator.of(context).pushNamed('/Dashboard1');
                          //     }
                          //  else if (!data.isregistered){
                          //     Navigator.of(context).pushNamed('/Register');
                          //     }

                          //     }

                          )
                          ),
                ],
              )
              )
              ),

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




  
  