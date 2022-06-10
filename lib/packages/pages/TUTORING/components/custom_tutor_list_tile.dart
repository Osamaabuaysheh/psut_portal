import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/TUTORING/subject_cards.dart';

class CustomTutorListTile extends StatelessWidget {
  const CustomTutorListTile({
    Key? key,
    final int itemCount = 2,
  })  : _itemCount = itemCount,
        super(key: key);

  final int _itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 97.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const SubjectCards(),
        itemCount: _itemCount,
      ),
    );
  }
}
