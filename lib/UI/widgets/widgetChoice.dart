// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:settings/functions/functions.dart';

Widget decideImageView() {
  if (imageFile == null) {
    return const Icon(FontAwesomeIcons.car, color: Colors.grey);
  } else {
    return Image.file(imageFile);
  }
}

Widget decideDoorView() {
  if (door == 2) {
    return const Text("Door 2", style: TextStyle(fontSize: 21));
  } else if (door == 3) {
    return const Text("Door 3", style: TextStyle(fontSize: 21));
  } else if (door == 3) {
    return const Text("Door 4", style: TextStyle(fontSize: 21));
  } else {
    return const Text("Door", style: TextStyle(fontSize: 21));
  }
}
//Widget decideDoorView() {}
