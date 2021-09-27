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
    return Scaffold(
        backgroundColor: Colors.grey[400], body: const StackClass());
  }
}
