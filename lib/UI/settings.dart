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
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          bottom: TabBar(
            tabs: const [
              Tab(
                iconMargin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                icon: Icon(Icons.car_repair),
                text: "Vehicle Settings",
              ),
              Tab(
                iconMargin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                icon: Icon(Icons.settings),
                text: "App Settings",
              )
            ],
          ),
          leading:
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
          centerTitle: true,
          title: const Text('General Settings'),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: GeneralCon(),
            ),
            Center(
              child: Text("App Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
