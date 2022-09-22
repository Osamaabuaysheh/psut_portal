import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Model/login_model.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  static final client = http.Client();

  void login() async {
    LoginModel loginModel = LoginModel(
      username: emailController.value.text,
      password: passwordController.value.text,
    );
    var response = await client.post(
        Uri.parse('http://10.0.0.2:8000/login_Student'),
        body: loginModel.toJson());

    if (response.statusCode == 200) {
      Get.to(const MainHomePage());
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Incorrect",
        ),
      );
    }
  }
}
