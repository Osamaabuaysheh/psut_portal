import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';

import 'package:psut_portal/services/start_services/start_services.dart';
import 'package:psut_portal/themes/app_colors.dart';

class SessionController extends GetxController {
  var index = 0.obs;

  int get indexedStackSelected => index.value;

  set setIndex(int value) => index.value = value;
  SettingsServices prefs = Get.find();

  Future<int?> getTotal(sessionID) async {
    try {
      var response = await ApiController.client.post(
          Uri.parse("${ApiLogin.baseUrl}/get_session_total/$sessionID"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });
      if (response.statusCode == 200) {
        return int.parse(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  void incrementSession(int sessionID) async {
    try {
      var response = await ApiController.client.post(
          Uri.parse(
              "${ApiLogin.baseUrl}/increment_Session_Student?session_id=${sessionID.toInt()}&std_id=${prefs.preferences?.getString(StringConstants.studentID) ?? ""}"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });
      if (response.statusCode == 200) {
        Get.snackbar("Request", "Enroll Success",
            duration: const Duration(seconds: 2),
            backgroundColor: AppColors.successSnackBar,
            titleText: const Icon(Icons.check));
      } else if (response.statusCode == 403) {
        Get.snackbar(
          "Request",
          "You are Already Enrolled in This Section",
          duration: const Duration(seconds: 2),
          backgroundColor: AppColors.errorSnackBar,
          titleText: const Icon(Icons.error),
        );
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
