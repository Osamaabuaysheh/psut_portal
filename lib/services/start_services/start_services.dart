import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  SharedPreferences? preferences;
  Future<SettingsServices> init() async {
    preferences = await SharedPreferences.getInstance();
    return this;
  }
}
