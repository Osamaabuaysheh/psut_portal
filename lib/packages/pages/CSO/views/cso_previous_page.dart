import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';

class CsoPreviousPage extends StatelessWidget {
  const CsoPreviousPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => const CustomUpcomingPreviousCard(
        title: "Cancer Awareness Lecture",
        subtitle: "on the occasion of cancer awareness month",
        date: "Date And Time",
        location: "Location",
        time: "Time",
      ),
    );
  }
}
