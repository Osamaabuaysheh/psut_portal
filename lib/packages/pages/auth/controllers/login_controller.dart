import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:convert' as json;

import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Model/login_model.dart';
import 'package:psut_portal/packages/pages/auth/Views/login.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  void login() async {
    SettingsServices prefs = Get.find();
    prefs.preferences?.clear();
    LoginModel loginModel = LoginModel(
      username: emailController.value.text,
      password: passwordController.value.text,
    );

    try {
      debugPrint("Login Started");
      isLoading.value = true;
      var response = await ApiController.client.post(
        Uri.parse(ApiLogin.accessToken),
        body: loginModel.toJson(),
      );

      if (response.statusCode == 200) {
        final token = json.jsonDecode(response.body);
        prefs.preferences!
            .setString(StringConstants.token, token['access_token'].toString());
        prefs.preferences!.setString(
            StringConstants.studentID, loginModel.username.toString());

        Get.offAllNamed(MainHomePage.id);
      }
    } catch (e) {
      isLoading.value = false;
      Get.showSnackbar(
        const GetSnackBar(
          title: "Incorrect Username or Password",
          message: "Incorrect",
          duration: Duration(seconds: 3),
          dismissDirection: DismissDirection.down,
        ),
      );
      debugPrint(e.toString());
    }
  }

  void logOut() {
    emailController.clear();
    passwordController.clear();
    SettingsServices prefs = Get.find();
    prefs.preferences?.remove(StringConstants.token);
    Get.offAllNamed(PageLogin.id);
  }
}
