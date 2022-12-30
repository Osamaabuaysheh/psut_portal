import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';
import 'dart:convert';

import '../Models/bus_route_image_model.dart';

class BusImagesController extends GetxController {
  static RxString busRouteImage = "".obs;
  static RxString ramadanBusRouteImage = "".obs;

  static getDetails() async {
    SettingsServices prefs = Get.find();
    try {
      var response = await ApiController.client.get(
          Uri.parse("${ApiLogin.baseUrl}/get_All_Bus_Routes_Images"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });

      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        busRouteImage.value = BusRouteImages.fromJson(json).image!;
        ramadanBusRouteImage.value =
            BusRouteImages.fromJson(json).ramadanImage!;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  @override
  void onInit() {
    getDetails();
    super.onInit();
  }
}
