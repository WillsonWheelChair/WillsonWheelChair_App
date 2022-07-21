import 'package:willsonwheelchair_app/common/models/user_model.dart';
import 'package:willsonwheelchair_app/common/models/disabled_model.dart';
import 'package:willsonwheelchair_app/common/models/helper_model.dart';
import 'package:get/get.dart';

class AppData extends GetxController {

  Usermodel _usermodel = Usermodel(
      uid: '',
      pushToken: '',
      email: '',
      name: '',
      isDisabled: false,
      isHelper: false,
      wheelChairBluetoothName: '');

  Usermodel get usermodel => _usermodel;

  set usermodel(Usermodel usermodel) {
    _usermodel = _usermodel;
    update();
  }

  DisabledModel _disabledModel = DisabledModel(
      uid: '',
      pushToken: '',
      wheelChairBluetoothName: '',
      helper: '',
      lat: 0.0,
      lng: 0.0,
      isEmergence: false,
      isDriveMode: false,
      isConnectWheelChair: false);

  DisabledModel get disableModel => _disabledModel;

  set disableModel(DisabledModel disabledModel) {
    _disabledModel = _disabledModel;
    update();
  }

  HelperModel _helperModel = HelperModel(
      uid: '',
      pushToken: '',
      wheelChairBluetoothName: '',
      disabled: '');

  HelperModel get helperModel => _helperModel;

  set helperModel(HelperModel helperModel) {
    _helperModel = _helperModel;
    update();
  }
}