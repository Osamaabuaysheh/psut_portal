import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/pages/Home/views/home_page_body.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(title: 'Home'),
      endDrawer: BodyDrawer(),
      body: HomePageBody(),
    );
  }
}
