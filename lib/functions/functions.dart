import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



dynamic picture;
dynamic imageFile;
dynamic door;

openCamera(BuildContext context) async {
  var picture = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 160,
      maxWidth: 180,
      imageQuality: 30,
      preferredCameraDevice: CameraDevice.rear);

  imageFile = picture;
  Navigator.of(context).pop();
}

openGallery(BuildContext context) async {
  var picture = await ImagePicker.pickImage(
    source: ImageSource.gallery,
    maxHeight: 160,
    maxWidth: 190,
  );

  imageFile = picture;
  Navigator.of(context).pop();
}

doorChoice2(BuildContext context) {
  door = 2;
  Navigator.of(context).pop();
}

doorChoice3(BuildContext context) {
  door = 3;
  Navigator.of(context).pop();
}

doorChoice4(BuildContext context) {
  door = 4;
  Navigator.of(context).pop();
}
