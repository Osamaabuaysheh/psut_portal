import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Cards/components/add_card_dotted_button.dart';
import 'package:psut_portal/packages/pages/Cards/components/electronic_personal_card.dart';
import 'package:psut_portal/packages/pages/Cards/components/permit_card.dart';
import 'package:psut_portal/packages/pages/Cards/components/report_car_bottom_sheet.dart';

class HomeBodyCards extends StatelessWidget {
  const HomeBodyCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          const ElectronicPersonalCard(),
          InkWell(
            child: const PermitCard(),
            onTap: () => Get.bottomSheet(ReportCarBottomSheet()),
          ),
          const AddCardDottedButton(),
        ],
      ),
    );
  }
}
