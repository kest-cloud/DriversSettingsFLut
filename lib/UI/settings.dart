// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'general_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading:
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
        centerTitle: true,
        title: Text("General Settings"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: GeneralCon(),
    );
  }
}
