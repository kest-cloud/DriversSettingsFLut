// ignore_for_file: file_names, unnecessary_const, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:settings/UI/widgets/widgetChoice.dart';
import 'package:settings/functions/functions.dart';
import 'package:settings/functions/showDialog.dart';

class StackClass extends StatefulWidget {
  const StackClass({Key? key}) : super(key: key);

  @override
  _StackClassState createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  // dynamic picture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
      child: Container(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        width: 400,
        height: 600,
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 12,
              child: Align(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: 140,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(
                        0xffa49696,
                      ),
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: decideImageView(), //image,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 148,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    "Upload image ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      //fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                    ),
                  ),
                  const Text(
                    "of your car",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 125,
              top: 100,
              child: Align(
                child: Container(
                  width: 38,
                  height: 47,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      showChoiceDialog(context).then((onValue) {});
                    },
                    child: const Icon(FontAwesomeIcons.camera,
                        color: Colors.blueAccent),
                  ),
                ),
              ),
            ),
            StackPosRight(
              right: 30,
              top: 30,
              child: GestureDetector(
                  onTap: () {
                    showDoorDialog(context);
                  },
                  child: decideDoorView()),
            ),
            StackPosRight(
              right: 30,
              top: 90,
              child: GestureDetector(
                onTap: () {
                  showColorDialog(context);
                },
                child: const Text(
                  "Color",
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            StackPosRight(
              right: 30,
              top: 150,
              child: GestureDetector(
                onTap: () {
                  showTypeDialog(context);
                },
                child: const Text(
                  "Type",
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            Positioned(
                left: 20,
                top: 220,
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showCapacityDialog(context);
                        },
                        child: const Text(
                          "Capacity",
                          style: TextStyle(fontSize: 21),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 22),
                    Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showModeDialog(context);
                        },
                        child: const Text(
                          "Private",
                          style: TextStyle(fontSize: 21),
                        ),
                      ),
                    ),
                  ],
                )),
            StackPos(
              left: 20,
              top: 280,
              width: 345,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  showVehMakeDialog(context);
                },
                child: const Text(
                  "Vehicle Make",
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            StackPos(
                left: 20,
                top: 340,
                width: 345,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    showVehModelDialog(context);
                  },
                  child: const Text(
                    "Vehicle Model",
                    style: TextStyle(fontSize: 21),
                    textAlign: TextAlign.left,
                  ),
                )),
            StackPos(
                left: 20,
                top: 400,
                width: 345,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    showMFYDialog(context);
                  },
                  child: const Text(
                    "Manufacture Year",
                    style: TextStyle(fontSize: 21),
                  ),
                )),
            StackPos(
                height: 50,
                width: 345,
                left: 20,
                top: 460,
                child: GestureDetector(
                  onTap: () {
                    showVehPlateNumDialog(context);
                  },
                  child: const Text(
                    "Vehicle plate number",
                    style: TextStyle(fontSize: 21),
                  ),
                )),
            Positioned(
                left: 50,
                bottom: 20,
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Center(
                        child: TextButton(
                            onPressed: () {}, child: const Text("Cancel")),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Center(
                        child: TextButton(
                            onPressed: () {}, child: const Text("Save")),
                      ),
                    ),
                  ],
                )),
            Container(),
          ],
        ),
      ),
    );
  }
}

class StackPosRight extends StatelessWidget {
  final double right;
  final double top;
  final Widget child;

  const StackPosRight({
    Key? key,
    required this.right,
    required this.top,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: right,
        top: top,
        child: Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: GestureDetector(child: child),
        ));
  }
}

class StackPos extends StatelessWidget {
  final double left;
  final double top;
  final double width;
  final double height;
  final Widget child;

  const StackPos({
    Key? key,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        top: top,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: child,
        ));
  }
}
