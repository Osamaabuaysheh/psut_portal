import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProgressIndicator {
  static Widget? progressWidget() {
    if (GetPlatform.isIOS) {
      return const CupertinoActivityIndicator();
    } else {
      return const CircularProgressIndicator();
    }
  }
}
