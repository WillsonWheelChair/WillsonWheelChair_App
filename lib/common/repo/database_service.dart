import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('user');
  final CollectionReference disabledCollection = FirebaseFirestore.instance.collection('disabled');
  final CollectionReference helperCollection = FirebaseFirestore.instance.collection('helper');

  Future setUserData(
      String uid,
      String email,
      String name,
      bool isDisabled,
      bool isHelper,
      String wheelChairBluetoothName) async {
    await userCollection.doc(uid).set({
      'uid': uid,
      'pushToken': '',
      'email': email,
      'name': name,
      'isDisabled': isDisabled,
      'isHelper': isHelper,
      'wheelChairBluetoothName': wheelChairBluetoothName
    });
  }

  Future setDisabledDate(
      String uid,
      String pushToken,
      String wheelChairBluetoothName,
      String helper,
      double lat,
      double lng,
      bool isEmergence,
      bool isDriveMode,
      bool isConnectWheelChair) async {
    await disabledCollection.doc(uid).set({
      'uid': uid,
      'pushToken': '',
      'wheelChairBluetoothName': wheelChairBluetoothName,
      'helper': helper,
      'lat': lat,
      'lng': lng,
      'isEmergence': isEmergence,
      'isDriveMode': isDriveMode,
      'isConnectWheelChair': isConnectWheelChair
    });
  }

  Future setHelperModel(
      String uid,
      String wheelChairBluetoothName,
      String disabled) async {
    await helperCollection.doc(uid).set({
      'uid': uid,
      'pushToken': '',
      'wheelChairBluetoothName': wheelChairBluetoothName,
      'disabled': disabled
    });
  }

}