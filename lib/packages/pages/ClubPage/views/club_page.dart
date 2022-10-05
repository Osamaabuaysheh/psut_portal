import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_page_body.dart';

class ClubPage extends StatelessWidget {
  static const String id = "/ClubPage";
  const ClubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ClubPageBody(),
      ),
    );
  }
}
