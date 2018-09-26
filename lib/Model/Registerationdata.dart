//import 'dart:convert';
/*
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
*/

class Registerationdata {

  bool isregistered=false;                 //default not registered
  
  //String phone = '';
  int phone;
  String name;
  String age ;
  String cnic ;
  String city ;
  String email ;
  final String profileImgUrl;

//final String thumbnailUrl;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Constructor
 Registerationdata({
    this.phone,
    this.name,
    this.age,
    this.cnic,
    this.city,
    this.email,
    this.profileImgUrl

 });

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