import 'dart:io';

import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/Cards/Models/bus_route.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';
import 'dart:convert';

class BusRouteStudentController extends GetxController {
  static Future<BusRoute?> getDetails() async {
    SettingsServices prefs = Get.find();
    var stdID = prefs.preferences!.getString(StringConstants.studentID);
    try {
      var response = await ApiController.client.get(
          Uri.parse("${ApiLogin.baseUrl}/get_route_details_by_student/$stdID"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });

      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        return BusRoute.fromJson(json);
      }
    } on SocketException {
      return BusRoute();
    } catch (e) {
      return BusRoute();
    }
    return null;
  }

  @override
  void onInit() {
    getDetails();
    super.onInit();
  }
}
