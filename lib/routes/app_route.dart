import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/BUS/views/bus_page.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_event_name_page.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_profile_page.dart';
import 'package:psut_portal/packages/pages/Cards/cards_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_page.dart';
import 'package:psut_portal/packages/pages/Settings/views/settings_page.dart';
import 'package:psut_portal/packages/pages/auth/Views/forget.dart';
import 'package:psut_portal/packages/pages/auth/Views/login.dart';
import 'package:psut_portal/packages/pages/auth/Views/register.dart';
import 'package:psut_portal/packages/pages/notifications/views/notifications_page.dart';
import 'package:psut_portal/packages/pages/splash/views/body.dart';

class AppRoute {
  static Map<String, WidgetBuilder> route = {
    MainHomePage.id: (context) => const MainHomePage(),
    PageSplash.id: (context) => const PageSplash(),
    PageLogin.id: (context) => const PageLogin(),
    PageRegister.id: (context) => const PageRegister(),
    PageForget.id: (context) => const PageForget(),
    HomePage.id: (context) => const HomePage(),
    EventsPage.id: (context) => const EventsPage(),
    JOBSPage.id: (context) => const JOBSPage(),
    CSOPage.id: (context) => const CSOPage(),
    CsoEventNamePage.id: (context) => const CsoEventNamePage(),
    CsoProfilePage.id: (context) => const CsoProfilePage(),
    CardsPage.id: (context) => const CardsPage(),
    NotificationPage.id: (context) => const NotificationPage(),
    EventNamePage.id: (context) => const EventNamePage(),
    SettingsPage.id: (context) => const SettingsPage(),
    BusPage.id: (context) => const BusPage(),
  };
}
