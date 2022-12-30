import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/pages/BUS/controllers/bus_images_controller.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class BusPageBody extends StatelessWidget {
  BusPageBody({Key? key}) : super(key: key);
  final BusImagesController controller = Get.put(BusImagesController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: FutureBuilder(
          future: BusImagesController.getDetails(),
          builder: (context, snapshot) {
            return ListView(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: ExpansionTile(
                    collapsedBackgroundColor: AppColors.mainColor,
                    backgroundColor: AppColors.mainColor,
                    trailing: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                      size: 30.w,
                    ),
                    children: [
                      CachedNetworkImage(
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 400.h,
                        imageUrl:
                            "${ApiLogin.baseUrl}/${BusImagesController.busRouteImage.value}",
                      ),
                    ],
                    tilePadding: EdgeInsets.all(5.h),
                    title: Container(
                      padding: EdgeInsets.all(5.w),
                      child: Text(
                        "Regular Route Times",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.w),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: ExpansionTile(
                    collapsedBackgroundColor: AppColors.mainColor,
                    backgroundColor: AppColors.mainColor,
                    trailing: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                      size: 30.w,
                    ),
                    children: [
                      CachedNetworkImage(
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 400.h,
                        imageUrl:
                            "${ApiLogin.baseUrl}/${BusImagesController.ramadanBusRouteImage.value}",
                      ),
                    ],
                    tilePadding: EdgeInsets.all(5.h),
                    title: Container(
                      padding: EdgeInsets.all(5.w),
                      child: Text(
                        "Ramadan Route Times",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
