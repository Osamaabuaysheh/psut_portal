import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_page_body.dart';

class ClubPage extends StatelessWidget {
  static const String id = "/ClubPage";
  const ClubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clubArguments = Get.arguments;

    return Scaffold(
      body: SafeArea(
        child: ClubPageBody(
          backgroundImage: clubArguments.clubImage,
          clubName: clubArguments.clubName,
          description: clubArguments.description,
          iconImage: clubArguments.clubIconImage,
        ),
      ),
    );
  }
}
