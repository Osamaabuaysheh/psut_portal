import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:convert' as json;

import 'package:psut_portal/Constants/api/login_api.dart';
import 'package:psut_portal/Constants/string_constants.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Model/login_model.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'package:psut_portal/services/start_services/start_services.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  void login() async {
    SettingsServices prefs = Get.find();
    LoginModel loginModel = LoginModel(
      username: emailController.value.text,
      password: passwordController.value.text,
    );

    try {
      isLoading.value = true;
      var response = await ApiController.client.post(
        Uri.parse(ApiLogin.loginApi),
        body: loginModel.toJson(),
      );

      if (response.statusCode == 200) {
        final token = json.jsonDecode(response.body);

        prefs.preferences!
            .setString(StringConstants.token, token['token'].toString());

        Get.to(MainHomePage());
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
}
