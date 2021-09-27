class Settings {
  String image;
  String doors;
  String color;
  String type;
  String capacity;
  String private;
  String vehicleMake;
  String vehicleModel;
  String manufactureYear;
  String vehiclePlateNum;

  Settings(
      {required this.image,
      required this.doors,
      required this.color,
      required this.type,
      required this.capacity,
      required this.private,
      required this.vehicleMake,
      required this.vehicleModel,
      required this.manufactureYear,
      required this.vehiclePlateNum});

  factory Settings.fromJson(Map<String, dynamic> json) {
    return Settings(
      image: json['image'] as String,
      doors: json['doors'] as String,
      color: json['color'] as String,
      type: json['type'] as String,
      capacity: json['capacity'] as String,
      private: json['private'] as String,
      vehicleMake: json['vehicleMake'] as String,
      vehicleModel: json['vehicleModel'] as String,
      manufactureYear: json['manufactureYear'] as String,
      vehiclePlateNum: json['vehiclePlateNum'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = image;
    data['doors'] = doors;
    data['color'] = color;
    data['type'] = type;
    data['capacity'] = capacity;
    data['private'] = private;
    data['vehicleMake'] = vehicleMake;
    data['vehicleModel'] = vehicleModel;
    data['manufactureYear'] = manufactureYear;
    data['vehiclePlateNum'] = vehiclePlateNum;
    return data;
  }
}
