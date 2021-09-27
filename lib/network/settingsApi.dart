// ignore_for_file: file_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:settings/model/settings.dart';

class SettngsApi {
  String url = "http://10.0.2.2:5000/api/v1";

  // Future<List<Settings>> findAll() async {
  //   var response = await http.get(Uri.parse('$url/settings'));

  //   if (response.statusCode == 200) {
  //     List<dynamic> body = jsonDecode(response.body);
  //     return body.map((settings) => Settings.fromJson(settings)).toList();
  //   } else {
  //     throw Exception("Failed to Get Driver Profile");
  //   }
  // }

  Future sendDriverProf(Settings settings) async {
    final response = await http.post(
      Uri.parse('$url/settings'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(settings.toJson()),
    );
    if (response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Failed to send Coordinate.');
    }
  }
}
