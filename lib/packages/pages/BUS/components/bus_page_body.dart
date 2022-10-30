import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/custom_expansion_tile_bus.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/madina_tour_table.dart';
import 'package:psut_portal/packages/pages/BUS/components/controllers/bus_route_controller.dart';

import 'package:psut_portal/themes/custom_theme.dart';

class BusPageBody extends StatelessWidget {
  BusPageBody({Key? key}) : super(key: key);

  final BusRouteController butController = Get.put(BusRouteController());

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
            GetX<BusRouteController>(
              builder: (controller) => CustomExpansionTileBus(
                text: "Medina Routes",
                children: [
                  MadinaTourTable(routes: controller.busRoutes['Madina'] ?? []),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            GetX<BusRouteController>(
              builder: (controller) => CustomExpansionTileBus(
                text: "Ragadan Routes",
                children: [
                  MadinaTourTable(
                      routes: controller.busRoutes['Raghdan'] ?? []),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            GetX<BusRouteController>(
              builder: (controller) => CustomExpansionTileBus(
                text: "Marj Al-Hamam Routes",
                children: [
                  MadinaTourTable(
                      routes: controller.busRoutes['Marj Al-Hamam'] ?? []),
                ],
              ),
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