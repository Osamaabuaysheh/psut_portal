import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportCarController extends GetxController {
  TextEditingController carPermitNumberController = TextEditingController();
  final carPermitNumber = 0.obs;

  set setCarPermit(int carNum) {
    carPermitNumber.value = carNum;
  }

  @override
  void onClose() {
    carPermitNumberController.clear();
  }
}
