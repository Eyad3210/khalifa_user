import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  final GetStorage boxStorage = GetStorage();
  final key = 'switch';
  RxBool switchTheme = false.obs;
  saveSwitchValue(bool switchValue) {
    boxStorage.write(key, switchValue);
  }

  bool getSwitchValue() {
    return boxStorage.read(key) ?? false;
  }
}
