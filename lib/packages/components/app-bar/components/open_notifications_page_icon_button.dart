import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/notifications/views/notifications_page.dart';

class OpenNotificationPageIconButton extends StatelessWidget {
  const OpenNotificationPageIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pushNamed(context, NotificationPage.id),
      icon: const Icon(Icons.notifications_active_outlined),
    );
  }
}
