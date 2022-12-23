import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/CSO/Models/cso_event.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

import 'package:psut_portal/services/start_services/start_services.dart';

class CSOEventsController extends GetxController {
  List<CSOEvent> csoEvents = <CSOEvent>[].obs;
  SettingsServices prefs = Get.find();

  Future<List<CSOEvent>> getEvent() async {
    try {
      csoEvents.clear();
      var response = await ApiController.client.get(
          Uri.parse("${ApiLogin.baseUrl}/get_All_CSO_Events_Students"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        csoEvents.addAll(
            json.map<CSOEvent>((json) => CSOEvent.fromJson(json)).toList());

        return csoEvents;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return csoEvents;
    }
  }

  @override
  void onInit() async {
    csoEvents = await getEvent();
    csoEvents.sort((a, b) => DateTime.parse("${b.startDate}")
        .compareTo(DateTime.parse("${a.startDate}")));
    super.onInit();
  }
}
