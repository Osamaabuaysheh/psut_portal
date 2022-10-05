import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/notifications/components/notifcations_page_body.dart';

class NotificationPage extends StatelessWidget {
  static const String id = '/NotificationPage';
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        actions: [PopIconButton()],
      ),
      body: NotifcationsPageBody(),
    );
  }
}
