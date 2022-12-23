import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/services/start_services/start_services.dart';
import 'package:psut_portal/start_main.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
}
