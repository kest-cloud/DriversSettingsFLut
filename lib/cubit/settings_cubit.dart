import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:settings/functions/functions.dart';
import 'package:settings/model/settings.dart';
import 'package:settings/network/settingsApi.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  SettingsApi settingsApi = SettingsApi();
  List<Settings> settings = [];

  TextEditingController controllerImage = TextEditingController();
  TextEditingController controllerDoor = TextEditingController();
  TextEditingController controllerColor = TextEditingController();
  TextEditingController controllerType = TextEditingController();
  TextEditingController controllerCapacity = TextEditingController();
  TextEditingController controllerPrivate = TextEditingController();
  TextEditingController controllerVehicleMake = TextEditingController();
  TextEditingController controllerVehicleModel = TextEditingController();
  TextEditingController controllerVehiclePlate = TextEditingController();
  TextEditingController controllerManufactureYear = TextEditingController();

  createPost() async {
    emit(MessageState('Creating Post..'));

    // print("PostBody: ${controllerImage.value}");
    // print("postTitle: ${controllerDoor.value}");
    // print("postUserId: ${controllerType.value}");
    // print("postId:       ${controllerColor.value}");

    try {
      Settings settings = Settings(
          image: controllerImage.text,
          type: controllerType.text,
          manufactureYear: controllerManufactureYear.text,
          color: controllerColor.text,
          capacity: controllerCapacity.text,
          vehicleMake: controllerVehicleMake.text,
          vehicleModel: controllerVehicleModel.text,
          vehiclePlateNum: controllerVehiclePlate.text,
          doors: controllerDoor.text,
          private: controllerPrivate.text);

      var res = await settingsApi.sendDriverProf(settings);
      print("CreatePostRes: $res");
      emit(MessageState('Post Created Succesfully'));
    } on Exception catch (error) {
      emit(ErrorState(error));
    }
  }

  setDriverProf(Settings settings) {
    controllerImage.text = settings.image;
    controllerDoor.text = settings.doors;
    controllerCapacity.text = settings.capacity;
    controllerColor.text = settings.color;
    controllerPrivate.text = settings.private;
    controllerVehicleMake.text = settings.vehicleMake;
    controllerType.text = settings.type;
    controllerVehicleModel.text = settings.vehicleModel;
    controllerVehiclePlate.text = settings.vehiclePlateNum;
    controllerManufactureYear.text = settings.manufactureYear;
    emit(ImageState(controllerImage.text));
    emit(DoorState(controllerDoor.text));
    emit(CapacityState(controllerCapacity.text));
    emit(ManufactureYearState(controllerManufactureYear.text));
    emit(ColorState(controllerColor.text));
    emit(PrivateState(controllerPrivate.text));
    emit(VehicleMakeState(controllerVehicleMake.text));
    emit(VehicleModelState(controllerVehicleModel.text));
    emit(VehiclePlateNumState(controllerVehiclePlate.text));
    emit(TypeState(controllerType.text));
  }

  dynamic picture;

  openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(
        source: ImageSource.camera,
        maxHeight: 145,
        maxWidth: 153,
        imageQuality: 23,
        preferredCameraDevice: CameraDevice.rear);
    emit(ImageState(controllerImage.text));
    imageFile = picture;
    Navigator.of(context).pop();
  }

  openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 145,
        maxWidth: 160,
        imageQuality: 23,
        preferredCameraDevice: CameraDevice.rear);
    emit(ImageState(controllerImage.text));
    print(controllerImage);
    imageFile = picture;
    Navigator.of(context).pop();
  }
}
