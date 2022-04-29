import 'package:flutter/widgets.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/events_page.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_page.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutoringpage.dart';

class HomeStatePages extends ChangeNotifier {
  int _selectedPage = 2;
  final List<Widget> pages = <Widget>[
    const EventsPage(),
    const JOBSPage(),
    const HomePage(),
    const CSOPage(),
    const TUTROPAGE(),
  ];
  get selectedPage => _selectedPage;
  get currentScreen => pages[_selectedPage];
  set setPage(int index) {
    _selectedPage = index;
    notifyListeners();
  }
}
