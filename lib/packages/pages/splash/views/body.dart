import 'dart:async';

import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);
  static const String id = 'PageSplash';

  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      if (mounted) Navigator.pushReplacementNamed(context, MainHomePage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
