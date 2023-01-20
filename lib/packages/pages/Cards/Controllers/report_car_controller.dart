import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/Cards/Models/permit_card_model.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';

class ReportCarController extends GetxController {
  TextEditingController carPermitNumberController = TextEditingController();
  final carPermitNumber = 0.obs;
  RxBool isLoading = false.obs;
  SettingsServices prefs = Get.find();

  //ger_permit_by_student_id
  static Future<PermitCardModel?> getPermitCard() async {
    SettingsServices prefs = Get.find();
    var stdID = prefs.preferences!.getString(StringConstants.studentID);
    try {
      var response = await ApiController.client.get(
          Uri.parse(
              "${ApiLogin.baseUrl}/get_permit_by_student_id_student/$stdID"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });

      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        return PermitCardModel.fromJson(json);
      } else {
        return null;
      }
    } on SocketException {
      return PermitCardModel();
    } catch (e) {
      return PermitCardModel();
    }
  }

  Future<PermitCardModel?> reportCar() async {
    try {
      isLoading.value = true;
      var response = await ApiController.client.get(
          Uri.parse(
              "${ApiLogin.baseUrl}/ger_permit_by_permit_id/$carPermitNumber"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });

      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        return PermitCardModel.fromJson(json);
      } else {
        return null;
      }
    } on SocketException {
      return PermitCardModel();
    } catch (e) {
      return PermitCardModel();
    }
  }

  Future<void> establishConnection() async {
    try {
      var response = await ApiController.client.post(
          Uri.parse(
              "${ApiLogin.baseUrl}/establish_call?caller=${prefs.preferences?.getString(StringConstants.studentID)}&receiver=$carPermitNumber"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });
      if (response.statusCode == 200) {
      } else {
        debugPrint("Cannot establish Call");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  set setCarPermit(int carNum) {
    carPermitNumber.value = carNum;
  }

  @override
  void onClose() {
    carPermitNumberController.clear();
  }
}
