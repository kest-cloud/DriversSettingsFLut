// ignore_for_file: file_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:settings/model/settings.dart';

class SettingsApi {
  String url = "http://10.0.2.2:5000/api/v1";

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
