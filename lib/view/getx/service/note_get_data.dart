import 'dart:convert';



import 'package:http/http.dart' as http;
class NoteGetData {
  Future getdata()async{
    Uri uri = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var res = await http.get(uri);
    if(res.statusCode == 200){
      // print(" ${res.body}Sucessfully");
      var body = jsonDecode(res.body);
      List<Map<String,dynamic>> data = List<Map<String,dynamic>>.from(
        body['data']
      );
      return data;
    }else{
      print("Get Note Failed");
      return false;
    }
  }
}