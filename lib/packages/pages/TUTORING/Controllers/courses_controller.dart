import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/tutoring_tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/Models/course.dart';
import 'package:psut_portal/packages/pages/auth/controllers/api_controller.dart';
import 'dart:convert';

class CourseController extends GetxController {
  static List<Course> courses = <Course>[].obs;
  var displayAllCourses = List.from(courses).obs;

  var textEditingController = TextEditingController().obs;
  final TutoringTabBarController controller =
      Get.put(TutoringTabBarController());

  Future<List<Course>> getCourses() async {
    try {
      courses.clear();
      var response = await ApiController.client.get(
        Uri.parse("${ApiLogin.baseUrl}/get_course_details"),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(utf8.decode(response.bodyBytes))
            .cast<Map<String, dynamic>>();
        courses.addAll(data.map<Course>((json) {
          return Course.fromJson(json);
        }).toList());
        return courses;
      } else {
        throw Exception("Failed To load Data from Server");
      }
    } catch (e) {
      debugPrint(e.toString());
      return courses;
    }
  }

  void filterList(value) {
    if (value.isEmpty) {
      displayAllCourses.value = courses;
    }
    if (controller.tabBarcontroller.index == 0) {
      displayAllCourses.value = courses
          .where(
            (course) =>
                course.courseName
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                course.courseId.toString().toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    if (controller.tabBarcontroller.index == 1) {
      displayAllCourses.value = courses
          .where(
            (course) =>
                course.courseName
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                course.courseId.toString().toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    if (controller.tabBarcontroller.index == 2) {
      displayAllCourses.value = courses
          .where(
            (course) =>
                course.courseName
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                course.courseId.toString().toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    if (controller.tabBarcontroller.index == 3) {
      displayAllCourses.value = courses
          .where(
            (course) =>
                course.courseName
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                course.courseId.toString().toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
  }

  @override
  void onInit() async {
    courses = await getCourses();
    displayAllCourses.value = courses;
    super.onInit();
  }
}
