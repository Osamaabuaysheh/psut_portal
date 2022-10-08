import 'package:get/route_manager.dart';
import 'package:psut_portal/Middlewares/auth_middleware.dart';
import 'package:psut_portal/packages/pages/BUS/views/bus_page.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_event_name_page.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_profile_page.dart';
import 'package:psut_portal/packages/pages/Cards/views/cards_page.dart';
import 'package:psut_portal/packages/pages/ClubPage/views/club_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/JOBS/views/jobs_page.dart';
import 'package:psut_portal/packages/pages/SavedJobs/views/saved_jobs_page.dart';
import 'package:psut_portal/packages/pages/Settings/views/settings_page.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutor_signup.dart';
import 'package:psut_portal/packages/pages/TUTORING/views/tutoringpage.dart';
import 'package:psut_portal/packages/pages/auth/Views/forget.dart';
import 'package:psut_portal/packages/pages/auth/Views/login.dart';
import 'package:psut_portal/packages/pages/auth/Views/register.dart';
import 'package:psut_portal/packages/pages/auth/Views/wrapper.dart';
import 'package:psut_portal/packages/pages/notifications/views/notifications_page.dart';
import 'package:psut_portal/packages/pages/splash/views/body.dart';

class AppRoute {
  static List<GetPage<dynamic>>? route = [
    GetPage(name: MainHomePage.id, page: () => MainHomePage()),
    GetPage(name: PageSplash.id, page: () => const PageSplash(), middlewares: [
      AuthMiddleware(),
    ]),
    GetPage(name: PageLogin.id, page: () => PageLogin()),
    GetPage(name: PageRegister.id, page: () => const PageRegister()),
    GetPage(name: PageForget.id, page: () => const PageForget()),
    GetPage(name: HomePage.id, page: () => const HomePage()),
    GetPage(name: EventsPage.id, page: () => const EventsPage()),
    GetPage(name: JOBSPage.id, page: () => const JOBSPage()),
    GetPage(name: CSOPage.id, page: () => const CSOPage()),
    GetPage(name: TutorPage.id, page: () => const TutorPage()),
    GetPage(name: CsoEventNamePage.id, page: () => const CsoEventNamePage()),
    GetPage(name: CsoProfilePage.id, page: () => const CsoProfilePage()),
    GetPage(name: CardsPage.id, page: () => const CardsPage()),
    GetPage(name: NotificationPage.id, page: () => const NotificationPage()),
    GetPage(name: EventNamePage.id, page: () => const EventNamePage()),
    GetPage(name: SettingsPage.id, page: () => const SettingsPage()),
    GetPage(name: BusPage.id, page: () => const BusPage()),
    GetPage(name: Wrapper.id, page: () => const Wrapper()),
    GetPage(name: ClubPage.id, page: () => const ClubPage()),
    GetPage(name: TutorSignUp.id, page: () => const TutorSignUp()),
    GetPage(name: SavedJobsPage.id, page: () => SavedJobsPage()),
  ];
}
