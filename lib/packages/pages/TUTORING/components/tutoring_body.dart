import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/custom_tutor_list_tile.dart';

class TutoringBody extends StatelessWidget {
  const TutoringBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        CustomTutorListTile(itemCount: 5),
        CustomTutorListTile(itemCount: 3),
        CustomTutorListTile(itemCount: 4),
        CustomTutorListTile(itemCount: 6),
      ],
    );
  }
}
