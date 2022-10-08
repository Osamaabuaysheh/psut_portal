import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page.dart';
import 'package:psut_portal/packages/pages/JOBS/views/jobs_page.dart';
import 'package:psut_portal/packages/pages/TUTORING/views/tutoringpage.dart';

class BottomNavBarController extends GetxController {
  var currentIndex = 0;
  final List<Widget> pages = <Widget>[
    const HomePage(),
    const JOBSPage(),
    const EventsPage(),
    const CSOPage(),
    const TutorPage(),
  ];
  get selectedPageIndex => currentIndex;
  get currentScreen => pages[currentIndex];
  set setPage(int index) {
    currentIndex = index;
  }

  final List<IconData> listOfIcons = const [
    Icons.home,
    Icons.business_center_rounded,
    Icons.calendar_month_outlined,
    Icons.groups,
    Icons.school_rounded,
  ];

  final List<String> listOfStrings = const [
    'Home',
    'Jobs',
    'Events',
    'CSO',
    'Tutor'
  ];

  void setIndex(index) {
    currentIndex = index;
    update();
  }
}
