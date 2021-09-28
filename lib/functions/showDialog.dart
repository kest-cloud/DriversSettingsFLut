// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:settings/functions/functions.dart';

Future<void> showChoiceDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Image From: "),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text("Camera"),
                  onTap: () {
                    openCamera(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("Gallery"),
                  onTap: () {
                    openGallery(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showDoorDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text("2 Doors"),
                  onTap: () {
                    doorChoice2(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("3 Doors"),
                  onTap: () {
                    doorChoice3(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("4 Doors"),
                  onTap: () {
                    doorChoice4(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showColorDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("White"),
                        const SizedBox(width: 150),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.white10,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Red"),
                        const SizedBox(width: 185),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.red,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Green"),
                        const SizedBox(width: 175),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.green,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Yellow"),
                        const SizedBox(width: 170),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.yellow,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Teal"),
                        const SizedBox(width: 190),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.teal,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Orange"),
                        const SizedBox(width: 170),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.orange,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Dark BLue"),
                        const SizedBox(width: 150),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.blue,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Black"),
                        const SizedBox(width: 180),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.black,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Brown"),
                        const SizedBox(width: 175),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.brown,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Purple"),
                        const SizedBox(width: 175),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.purple,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Pink"),
                        const SizedBox(width: 190),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.pink,
                        )
                      ],
                    )),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    onTap: () {},
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Silver"),
                        const SizedBox(width: 180),
                        const Icon(
                          FontAwesomeIcons.car,
                          color: Colors.grey,
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      });
}

Future<void> showTypeDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text("Sedan"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("Hatchback"),
                  onTap: () {
                    doorChoice3(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("SUV"),
                  onTap: () {
                    doorChoice4(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("Minivan"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("Van"),
                  onTap: () {
                    doorChoice3(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showCapacityDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Maximum Passenger Capacity: "),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text("1 Person "),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("2 Person"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("3 Person"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("4 Person"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("5 Person"),
                  onTap: () {
                    doorChoice3(context);
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("6 Person"),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("7 Person"),
                  onTap: () {
                    doorChoice3(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showModeDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Maximum Passenger Capacity: "),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text("Private "),
                  onTap: () {},
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text("Taxi"),
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showVehMakeDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const TextField(),
                const Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancel")),
                    SizedBox(width: 100),
                    TextButton(
                        // style: ButtonStyle(backgroundColor: ),
                        onPressed: () {},
                        child: Text("Save")),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showVehModelDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const TextField(),
                const Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancel")),
                    SizedBox(width: 100),
                    TextButton(
                        // style: ButtonStyle(backgroundColor: ),
                        onPressed: () {},
                        child: Text("Save")),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showVehPlateNumDialog(BuildContext context) {
  BuildContext ccontext;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        ccontext = context;
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const TextField(),
                const Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(ccontext).pop();
                        },
                        child: const Text("Cancel")),
                    SizedBox(width: 100),
                    TextButton(
                        // style: ButtonStyle(backgroundColor: ),
                        onPressed: () {},
                        child: Text("Save")),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

Future<void> showMFYDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: const Text("Manufacturer Year: "),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: ListBody(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              child: const Text("2001 "),
                              onTap: () {
                                // ignore: unused_element
                                setState() {
                                  Text("2001");
                                }
                              },
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2002"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2003"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2004"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2005"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2006"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2007"),
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          children: [
                            GestureDetector(
                              child: const Text("2001 "),
                              onTap: () {
                                // ignore: unused_element
                                setState() {
                                  Text("2001");
                                }
                              },
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2002"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2003"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2004"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2005"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2006"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2007"),
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          children: [
                            GestureDetector(
                              child: const Text("2001 "),
                              onTap: () {
                                // ignore: unused_element
                                setState() {
                                  Text("2001");
                                }
                              },
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2002"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2003"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2004"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2005"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2006"),
                              onTap: () {},
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            GestureDetector(
                              child: const Text("2007"),
                              onTap: () {},
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            }));
      });
}
