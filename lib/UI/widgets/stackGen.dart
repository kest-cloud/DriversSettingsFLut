// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StackClass extends StatefulWidget {
  const StackClass({Key? key}) : super(key: key);

  @override
  _StackClassState createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                width: 153,
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
                child: const Icon(FontAwesomeIcons.car, color: Colors.grey),
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
            left: 130,
            top: 100,
            child: Align(
              child: Container(
                width: 38,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(FontAwesomeIcons.camera,
                    color: Colors.blueAccent),
              ),
            ),
          ),
          const StackPosRight(right: 30, top: 30),
          const StackPosRight(right: 30, top: 90),
          const StackPosRight(right: 30, top: 150),
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
                  ),
                ],
              )),
          const StackPos(left: 20, top: 280, width: 345, height: 50),
          const StackPos(left: 20, top: 340, width: 345, height: 50),
          const StackPos(left: 20, top: 400, width: 345, height: 50),
          const StackPos(height: 50, width: 345, left: 20, top: 460),
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
                    child: const Center(child: Text("Cancel")),
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
                    child: const Center(child: Text("Save")),
                  ),
                ],
              )),
          Container(),
        ],
      ),
    );
  }
}

class StackPosRight extends StatelessWidget {
  final double right;
  final double top;

  const StackPosRight({
    Key? key,
    required this.right,
    required this.top,
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
        ));
  }
}

class StackPos extends StatelessWidget {
  final double left;
  final double top;
  final double width;
  final double height;

  const StackPos(
      {Key? key,
      required this.left,
      required this.top,
      required this.width,
      required this.height})
      : super(key: key);

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
        ));
  }
}
