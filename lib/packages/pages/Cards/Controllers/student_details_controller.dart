import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/Cards/Models/student.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';

class StudentDetailsContoller extends GetxController {
  static RxString studentName = "".obs;
  static RxString studentNameArabic = "".obs;
  static RxString studentImage = "".obs;

  static Future<Student?> getDetails() async {
    SettingsServices prefs = Get.find();
    var stdID = prefs.preferences!.getString(StringConstants.studentID);
    try {
      var response = await ApiController.client.get(
          Uri.parse("${ApiLogin.baseUrl}/get_studentsById_student/$stdID"),
          headers: {
            'Authorization':
                "Bearer ${prefs.preferences?.getString(StringConstants.token)}"
          });

      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));
        studentName.value = Student.fromJson(json).fullName!;
        studentNameArabic.value = Student.fromJson(json).fullnameArabic!;
        studentImage.value = Student.fromJson(json).url!;
        return Student.fromJson(json);
      }
    } on SocketException {
      return Student();
    } catch (e) {
      return Student();
    }
    return null;
  }

  @override
  void onInit() {
    getDetails();
    super.onInit();
  }
}
