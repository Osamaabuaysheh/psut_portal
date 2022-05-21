import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/JOBS/apply_cv.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/utils/path_image.dart';

class JobDesc extends StatelessWidget {
  const JobDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TODO stack
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Container(
                    width: double.infinity,
                    height: 280.h,
                    color: AppColors.white,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 10,
                      child: Container(
                        height: 200.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(23.r),
                          ),
                          // color: Colors.indigo,
                          image: const DecorationImage(
                            image: AssetImage(PathImage.amazonOffice),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    width: 95.w,
                    height: 85.h,
                    //padding: const EdgeInsets.only(top: 180.0, left: 20.0),
                    top: 170.h,
                    left: 30.w,
                    child: Container(
                      padding: EdgeInsets.all(15.w),
                      child: Image.asset(
                        PathImage.amazonLogo,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(0, 2),
                          ),
                        ],
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(27.r),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    right: 30,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_border,
                              color: AppColors.blue,
                              size: 32.w,
                            )),
                        //SizedBox(width: 2.w),
                        IconButton(
                          //color: Colors.red,
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: AppColors.blue,
                            size: 32.w,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Center(
                  //   child:
                  // )
                ],
              ),
              //TODO Column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Designer',
                      style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 29.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    const CustomSpacing(),
                    Text('Amazon Amman',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold)),
                    const CustomSpacing(),
                    Text('Deadline 20 Jan 2022',
                        style: TextStyle(
                            color: AppColors.lightBlue, fontSize: 14.sp)),
                    const ParaSpacing(),
                    Text(
                      'Conditions',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    const CustomSpacing(),
                    SizedBox(
                      width: 300.w,
                      child: Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16.sp,
                          )),
                    ),
                    const ParaSpacing(),
                    Text(
                      'Job Description',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    const CustomSpacing(),
                    SizedBox(
                      width: 300.w,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    const ParaSpacing(),
                    Text(
                      'Job Responsibilities',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    const CustomSpacing(),
                    SizedBox(
                      width: 300.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    const ParaSpacing(),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text('Apply before 20 Jan 2022',
                              style: TextStyle(color: AppColors.lightBlue)),
                        ),
                        const CustomSpacing(),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                      height: 315.h, child: const ApplyCv());
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(43.r),
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              'Apply Now',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(191.w, 62.h),
                              primary: AppColors.blue,
                              textStyle: TextStyle(color: AppColors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31.r),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
