import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutor_req_body.dart';
import 'package:psut_portal/themes/app_colors.dart';

class TutorRequestPage extends StatelessWidget {
  static const String id = '/TutorSignUp';

  const TutorRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarSimple(
        actions: [
          PopIconButton(),
        ],
      ),
      body: TutorReqBody(),
    );
  }
}
