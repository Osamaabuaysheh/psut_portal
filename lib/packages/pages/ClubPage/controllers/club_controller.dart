import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/api/login_api.dart';
import 'package:psut_portal/packages/pages/ClubPage/models/club_model.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class ClubController extends GetxController {
  List<Club> clubs = <Club>[].obs;

  Future<List<Club>> getClubs() async {
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_All_Clubs"),
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        clubs.addAll(json.map<Club>((json) => Club.fromJson(json)).toList());
        return clubs;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return clubs;
    }
  }

  @override
  void onInit() async {
    clubs = await getClubs();
    super.onInit();
  }
}
