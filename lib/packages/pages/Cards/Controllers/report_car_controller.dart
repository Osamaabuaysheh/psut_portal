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

  //ger_permit_by_student_id
  static Future<PermitCardModel?> getPermitCard() async {
    SettingsServices prefs = Get.find();
    var stdID = prefs.preferences!.getString(StringConstants.studentID);
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_permit_by_student_id/$stdID"),
      );
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
      );
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

  set setCarPermit(int carNum) {
    carPermitNumber.value = carNum;
  }

  @override
  void onClose() {
    carPermitNumberController.clear();
  }
}
