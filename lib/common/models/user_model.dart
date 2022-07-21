Usermodel? usermodel;

class Usermodel {
  String uid;
  String pushToken;
  String email;
  String name;
  bool isDisabled;
  bool isHelper;
  String wheelChairBluetoothName;

  Usermodel(
    {
      required this.uid,
      required this.pushToken,
      required this.email,
      required this.name,
      required this.isDisabled,
      required this.isHelper,
      required this.wheelChairBluetoothName
    }
  );

  Usermodel.fromJson(Map<String, dynamic> json)
    : uid = json['uid'],
      pushToken = json['pushToken'] ?? '',
      email = json['email'],
      name = json['name'],
      isDisabled = json['isDisabled'],
      isHelper = json['isHelper'],
      wheelChairBluetoothName = json['wheelChairBluetoothName'];

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'pushToken': pushToken,
    'email': email,
    'name': name,
    'isDisabled': isDisabled,
    'isHelper': isHelper,
    'wheelChairBluetoothName': wheelChairBluetoothName
  };
}