import 'package:flutter/widgets.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page.dart';
import 'package:psut_portal/packages/pages/JOBS/views/jobs_page.dart';
import 'package:psut_portal/packages/pages/TUTORING/views/tutoring_page.dart';

class HomeStatePages extends ChangeNotifier {
  int _selectedPage = 0;
  final List<Widget> pages = <Widget>[
    const HomePage(),
    const JOBSPage(),
    const EventsPage(),
    const CSOPage(),
     TutorPage(),
  ];
  get selectedPage => _selectedPage;
  get currentScreen => pages[_selectedPage];
  set setPage(int index) {
    _selectedPage = index;
    notifyListeners();
  }
}
