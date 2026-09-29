import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class NoteGetData {
  Future faceNoteData() async {
    Uri uri = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var res = await http.get(uri);
    if (res.statusCode == 200) {
      // print(" ${res.body}Sucessfully");
      var body = jsonDecode(res.body);
      List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(
        body['data'],
      );

      return data;
    } else {
      print("Get Note Failed");
      return false;
    }
  }

  Future<bool> getCreateData({
    required String title,
    required String details,
  }) async {
    Uri uri = Uri.parse("https://b5.dokanibahe.com/api/v1/notes");
    var res = await http.post(
      uri,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: jsonEncode({"title": title, "details": details}),
    );

    if (res.statusCode == 201) {
      log("data add sucessfully");

      return true;
    } else {
      return false;
    }
  }

  Future<bool> getUpdateData({
    required String title,
    required String details,
    required dynamic id,
  }) async {
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/$id");
    var body = {"title": title, "details": details};
    var res = await http.patch(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: jsonEncode(body),
    );
    if (res.statusCode == 200) {
      log("===${res.statusCode}===");
      return true;
    } else {
      return false;
    }
  }

  Future<bool> getDeleteData(int id) async {
    Uri url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/$id");
    var res = await http.delete(url);
    if (res.statusCode == 200 || res.statusCode == 204) {
      return true;
    } else if (res.statusCode == 404) {
      return false;
    } else {
      return false;
      log("Delete Failed ${res.statusCode}");
    }
  }

  Future<dynamic> getNoteDetails({required String id}) async {
    final url = Uri.parse("https://b5.dokanibahe.com/api/v1/notes/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      final res = jsonDecode(response.body);
      return res['message'];
    }
  }
}
