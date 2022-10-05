import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/loading/loading_page.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Views/login.dart';
import 'package:psut_portal/packages/pages/auth/manage_state/auth_service.dart';

class Wrapper extends StatelessWidget {
  static const String id = '/Wrapper';
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingPage();
        } else if (snapshot.hasData) {
          return const MainHomePage();
        } else {
          return PageLogin();
        }
      },
    );
  }
}
