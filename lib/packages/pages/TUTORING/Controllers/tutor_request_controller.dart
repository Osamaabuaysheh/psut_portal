import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';
import 'package:psut_portal/themes/app_colors.dart';

class TutorRequestController extends GetxController {
  TextEditingController courseID = TextEditingController();
  TextEditingController semesterOfCompletion = TextEditingController();
  TextEditingController grade = TextEditingController();
  SettingsServices prefs = Get.find();

  void submitRequest() async {
    try {
      var response = await ApiController.client.post(
        Uri.parse(ApiLogin.requestTutorApi +
            "?semster_completion=${semesterOfCompletion.text}&grade=${grade.text}&student_id=${prefs.preferences?.getString(StringConstants.studentID) ?? ""}&course_id=${courseID.text}"),
      );
      if (response.statusCode == 200) {
        Get.snackbar("Request", "Request Has Been Sent",
            duration: const Duration(seconds: 2));
        courseID.clear();
        semesterOfCompletion.clear();
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
    semesterOfCompletion.clear();
    grade.clear();
  }
}
