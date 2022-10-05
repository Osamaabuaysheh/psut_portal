import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/services/start_services/start_services.dart';

class AuthMiddleware extends GetMiddleware {
  SettingsServices prefs = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (prefs.preferences!.getString(StringConstants.token) != null) {
      return const RouteSettings(name: MainHomePage.id);
    } else {
      return null;
    }
  }
}
