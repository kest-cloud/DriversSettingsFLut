import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:settings/model/settings.dart';
import 'package:settings/network/settingsApi.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

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

    print("PostBody: ${controllerImage.value}");
    print("postTitle: ${controllerDoor.value}");
    print("postUserId: ${controllerType.value}");
    print("postId:       ${controllerColor.value}");

    try {
      SettingsApi settingsApi = SettingsApi();
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
}
