DisabledModel? disabledModel;

class DisabledModel {
  String uid;
  String pushToken;
  String wheelChairBluetoothName;
  int lat;
  int lng;
  bool isEmergence;
  bool isDriveMode;
  bool isConnectWheelChair;

  DisabledModel(
      {
        required this.uid,
        required this.pushToken,
        required this.wheelChairBluetoothName,
        required this.lat,
        required this.lng,
        required this.isEmergence,
        required this.isDriveMode,
        required this.isConnectWheelChair
      }
      );

  DisabledModel.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        pushToken = json['pushToken'] ?? '',
        wheelChairBluetoothName = json['wheelChairBluetoothName'],
        lat = json['lat'],
        lng = json['lng'],
        isEmergence = json['isEmergence'],
        isDriveMode = json['isDriveMode'],
        isConnectWheelChair = json['isConnectWheelChair'];

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'pushToken': pushToken,
    'wheelChairBluetoothName': wheelChairBluetoothName,
    'lat': lat,
    'lng': lng,
    'isEmergence': isEmergence,
    'isDriveMode': isDriveMode,
    'isConnectWheelChair': isConnectWheelChair
  };
}