import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/custom_expansion_tile_bus.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/madina_tour_table.dart';

import 'package:psut_portal/themes/custom_theme.dart';

class BusPageBody extends StatelessWidget {
  const BusPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 18.h,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bus Tours",
                style: CustomTheme.mainTextStyle?.copyWith(fontSize: 20.sp),
              ),
            ),
            SizedBox(height: 20.h),
            const CustomExpansionTileBus(
              text: "Medina Routes",
              children: [
                MadinaTourTable(),
              ],
            ),
            SizedBox(height: 20.h),
            const CustomExpansionTileBus(
              text: "Medina Routes",
              children: [
                MadinaTourTable(),
              ],
            ),
            SizedBox(height: 20.h),
            const CustomExpansionTileBus(
              text: "Medina Routes",
              children: [
                MadinaTourTable(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}








// decoration: BoxDecoration(
//                 color: AppColors.mainColor,
//                 borderRadius: BorderRadius.circular(30.r),
//               ),