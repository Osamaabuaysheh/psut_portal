import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/custom_bottom_nav_bar.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page_body.dart';

class HomePage extends StatelessWidget {
  static const String id = '/HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        key: _key,
        bottomsize: 20,
        title: 'My PSUT',
        actions: const [
          OpenDrawerIconButton(),
        ],
      ),
      endDrawer: const BodyDrawer(),
      body: HomePageBody(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
