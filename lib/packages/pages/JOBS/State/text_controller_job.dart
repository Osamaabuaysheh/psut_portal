import 'package:get/get.dart';

class TextJobController extends GetxController {
  var jobTitle = "all jobs".obs;

  void changeText(String text) {
    jobTitle.value = text;
    update();
  }
}
