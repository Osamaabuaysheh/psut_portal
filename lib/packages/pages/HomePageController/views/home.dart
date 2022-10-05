import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/custom_bottom_nav_bar.dart';
import 'package:psut_portal/packages/pages/HomePageController/components/home_body.dart';
import 'package:psut_portal/packages/pages/HomePageController/stateManageHome/home_state_pages.dart';

class MainHomePage extends StatelessWidget {
  static const String id = '/MainHomePage';
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeStatePages(),
      child: const Scaffold(
        body: HomeBodyController(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
