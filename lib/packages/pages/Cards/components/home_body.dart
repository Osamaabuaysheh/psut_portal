import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/BUS/views/bus_page.dart';
import 'package:psut_portal/packages/pages/Cards/components/bus_card.dart';
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
      child: ListView(
        children: [
          const ElectronicPersonalCard(),
          SizedBox(height: 30.h),
          InkWell(
            child: const PermitCard(),
            onTap: () => Get.bottomSheet(ReportCarBottomSheet()),
          ),
          SizedBox(height: 30.h),
          InkWell(
            onTap: () => Get.toNamed(BusPage.id),
            child: const BusCard(),
          )
        ],
      ),
    );
  }
}
