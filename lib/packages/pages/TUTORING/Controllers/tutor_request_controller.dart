import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';
import 'package:psut_portal/themes/app_colors.dart';

List<String> menuItems = [];

List<String> add() {
  for (int i = 0; i.isLowerThan(5); i++) {
    menuItems.addAll([
      "202$i - 202${i + 1} Summer Semester",
      "202$i - 202${i + 1} Second Semester",
      "202$i - 202${i + 1} First Semester"
    ]);
  }
  return menuItems;
}

class TutorRequestController extends GetxController {
  TextEditingController courseID = TextEditingController();
  TextEditingController grade = TextEditingController();
  SettingsServices prefs = Get.find();
  static List<String> menuItems = add();

  RxString value = menuItems.first.obs;
  final List<DropdownMenuItem<String>> dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          alignment: Alignment.center,
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  void submitRequest() async {
    try {
      var response = await ApiController.client.post(
          Uri.parse(ApiLogin.requestTutorApi +
              "?semster_completion=$value&grade=${grade.text}&student_id=${prefs.preferences?.getString(StringConstants.studentID) ?? ""}&course_id=${courseID.text}"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });
      if (response.statusCode == 200) {
        Get.snackbar("Request", "Request Has Been Sent",
            duration: const Duration(seconds: 2));
        courseID.clear();
        grade.clear();
      } else {
        Get.snackbar("Error", "Error",
            duration: const Duration(seconds: 2),
            backgroundColor: AppColors.torchReda.withOpacity(0.65));
      }
    } catch (e) {
      debugPrint("Request Error");
    }
  }

  @override
  void onClose() {
    super.onClose();
    courseID.clear();
    grade.clear();
  }
}
