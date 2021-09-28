import 'package:flutter/material.dart';
import 'package:settings/UI/widgets/stackGen.dart';

class GeneralCon extends StatefulWidget {
  const GeneralCon({Key? key}) : super(key: key);

  @override
  _GeneralConState createState() => _GeneralConState();
}

class _GeneralConState extends State<GeneralCon> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 1),
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80.0),
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: const TabBar(
                  labelColor: Colors.blue,
                  tabs: [
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
              ),
            ),
            backgroundColor: Colors.grey[300],
            body: const TabBarView(children: [
              Center(
                child: StackClass(),
              ),
              Center(child: Text("App Settings"))
            ])),
      ),
    );
  }
}


          
   
    // 