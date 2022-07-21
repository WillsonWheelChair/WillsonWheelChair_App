HelperModel? helperModel;

class HelperModel {
  String uid;
  String pushToken;
  String wheelChairBluetoothName;
  String disabled;

  HelperModel(
    {
      required this.uid,
      required this.pushToken,
      required this.wheelChairBluetoothName,
      required this.disabled
    }
  );

  HelperModel.fromJson(Map<String, dynamic> json)
    : uid = json['uid'],
      pushToken = json['pushToken'],
      wheelChairBluetoothName = json['wheelChairBluetoothName'],
      disabled = json['disabled'];

  Map<String, dynamic> toJson() =>
    {
      'uid': uid,
      'pushToken': pushToken,
      'wheelChairBluetoothName': wheelChairBluetoothName,
      'disabled': disabled
    };
}