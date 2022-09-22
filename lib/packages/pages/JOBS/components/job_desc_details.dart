import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/JOBS/apply_cv.dart';
import 'package:psut_portal/themes/app_colors.dart';

class JobDescDetails extends StatelessWidget {
  const JobDescDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style: TextStyle(color: AppColors.lightBlue, fontSize: 14.sp)),
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
                          height: 315.h,
                          child: const ApplyCv(),
                        );
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
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(191.w, 62.h),
                    backgroundColor: AppColors.blue,
                    textStyle: TextStyle(color: AppColors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31.r),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ],
      ),
    );
  }
}
