import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/EVENTS/models/event.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class EventController extends GetxController {
  List<Event> events = <Event>[].obs;

  Future<List<Event>> getEvent() async {
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_All_Events"),
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        events.addAll(json.map<Event>((json) => Event.fromJson(json)).toList());
        return events;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return events;
    }
  }

  @override
  void onInit() async {
    events = await getEvent();
    super.onInit();
  }
}
