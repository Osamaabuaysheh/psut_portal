import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/EVENTS/models/event.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class EventController extends GetxController {
  List<Event> allEvents = <Event>[].obs;
  List<Event> clubEvents = <Event>[].obs;
  List<Event> deanEvents = <Event>[].obs;

  Future<List<Event>> getEvent() async {
    allEvents.clear();
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_All_Events"),
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        allEvents
            .addAll(json.map<Event>((json) => Event.fromJson(json)).toList());

        for (var event in allEvents) {
          if (event.ownerRole == 'EVENTS') {
            deanEvents.add(event);
          }
        }

        return allEvents;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return allEvents;
    }
  }

  Future<List<Event>> getClubEvents() async {
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_club_events"),
      );
      if (response.statusCode == 200) {
        final events = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        clubEvents
            .addAll(events.map<Event>((json) => Event.fromJson(json)).toList());
        return clubEvents;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return clubEvents;
    }
  }

  @override
  void onInit() async {
    allEvents = await getEvent();
    allEvents.sort((a, b) => DateTime.parse("${b.startDate}")
        .compareTo(DateTime.parse("${a.startDate}")));
    clubEvents = await getClubEvents();
    super.onInit();
  }
}
