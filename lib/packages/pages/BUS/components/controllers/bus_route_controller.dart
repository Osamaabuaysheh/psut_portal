import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/api/login_api.dart';
import 'package:psut_portal/packages/pages/BUS/models/bus_route.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class BusRouteController extends GetxController {
  Map<String, List<BusRoute>> busRoutes = <String, List<BusRoute>>{}.obs;

  Future<Map<String, List<BusRoute>>> getRoutes(
      {required String routeName}) async {
    try {
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_All_Bus_Routes"),
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(utf8.decode(response.bodyBytes));
        busRoutes['Madina'] =
            List.from(json['Madina']).map((e) => BusRoute.fromJson(e)).toList();
        busRoutes['Marj Al-Hamam'] = List.from(json['Marj Al-Hamam'])
            .map((e) => BusRoute.fromJson(e))
            .toList();
        busRoutes['Raghdan'] = List.from(json['Raghdan'])
            .map((e) => BusRoute.fromJson(e))
            .toList();
        debugPrint(busRoutes.toString());
        return busRoutes;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return busRoutes;
    }
  }

  @override
  void onInit() async {
    busRoutes = await getRoutes(routeName: "Madina");
    super.onInit();
  }
}
