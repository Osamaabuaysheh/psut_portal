import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_previous_page.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_upcoming_page.dart';

class CsoPageBody extends StatelessWidget {
  const CsoPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        CsoUpcomingPage(),
        CsoPreviousPage(),
      ],
    );
  }
}
