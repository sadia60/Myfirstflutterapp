import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

///////////////////////~~~~~~~~~~~~~~~~~~~~~~~CAMERA IMAGE PICKER ~~~~~~~~~~~~~~~~~~~~~~~~
///
///
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~For Camera 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

 class _MyHomePageState extends State<MyHomePage> { 
 
  File image;

//  To use Gallery or File Manager to pick Image
//  Comment Line No. 19 and uncomment Line number 20
 
 
  picker() async {
    print('Picker is called');
   File img = await ImagePicker.pickImage(source: ImageSource.camera);
//    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Image Picker'),
        ),


        body: 
        
        new Container(
          child: new Center(
            child: image == null
                ? new Text('No Image to Show ')
                : new Image.file(image),
          ),
        ),
        
        floatingActionButton: new FloatingActionButton(
          onPressed: picker,
          child: new Icon(Icons.camera_alt),
        ),
      
      
      ),
    );
  }
}


// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


// //import 'package:image_picker/image_picker.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }



// class _MyHomePageState extends State<MyHomePage> {



//   File _image;

//   Future getImage() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.camera);

//     setState(() {
//       _image = image;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Image Picker Example'),
//       ),
//       body: new Center(
//         child: _image == null
//             ? new Text('No image selected.')
//             : new Image.file(_image),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         onPressed: getImage,
//         tooltip: 'Pick Image',
//         child: new Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }
