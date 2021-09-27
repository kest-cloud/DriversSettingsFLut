part of 'settings_cubit.dart';

@immutable
abstract class SettingsState {}

class SettingsInitial extends SettingsState {}

class LoadingState extends SettingsState {
  final bool isLoading;
  LoadingState(this.isLoading);
}

class LoadedState extends SettingsState {
  final bool isLoading = false;
  LoadedState(isLoading);
}

class ManufactureYearState extends SettingsState {
  final String controllerManufactureYear;
  ManufactureYearState(this.controllerManufactureYear);
}

class ImageState extends SettingsState {
  final String controllerImage;
  ImageState(this.controllerImage);
}

class DoorState extends SettingsState {
  final String controllerDoor;
  DoorState(this.controllerDoor);
}

class ColorState extends SettingsState {
  final String controllerColor;
  ColorState(this.controllerColor);
}

class TypeState extends SettingsState {
  final String controllerType;
  TypeState(this.controllerType);
}

class CapacityState extends SettingsState {
  final String controllerCapacity;
  CapacityState(this.controllerCapacity);
}

class PrivateState extends SettingsState {
  final String controllerPrivate;
  PrivateState(this.controllerPrivate);
}

class VehicleMakeState extends SettingsState {
  final String controllerVehicleMake;
  VehicleMakeState(this.controllerVehicleMake);
}

class VehicleModelState extends SettingsState {
  final String controllerVehicleModel;
  VehicleModelState(this.controllerVehicleModel);
}

class VehiclePlateNumState extends SettingsState {
  final String controllerVehiclePlate;
  VehiclePlateNumState(this.controllerVehiclePlate);
}

class MessageState extends SettingsState {
  final String message;
  MessageState(this.message);
}

class ErrorState extends SettingsState {
  final Exception error;
  ErrorState(this.error);
}
