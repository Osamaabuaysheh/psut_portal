import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Cards/components/add_card_dotted_button.dart';
import 'package:psut_portal/packages/pages/Cards/components/electronic_personal_card.dart';
import 'package:psut_portal/packages/pages/Cards/components/permit_card.dart';

class HomeBodyCards extends StatelessWidget {
  const HomeBodyCards({
    Key? key,
    final String uID = "20180926",
  })  : _userId = uID,
        super(key: key);

  final String _userId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          // const AddCardDottedButton(),
          ElectronicPersonalCard(userId: _userId),
          const PermitCard(),
          const AddCardDottedButton(),
        ],
      ),
    );
  }
}
