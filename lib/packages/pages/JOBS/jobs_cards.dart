import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/build_icon_job.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/themes/app_colors.dart';

bool toggle = false;

class JobsCard extends StatelessWidget {
  JobsCard({
    Key? key,
    required String jobTitle,
    required String companyName,
    required String date,
    required String college,
    required void Function()? onPressed,
    required RxBool isFavourite,
  })  : _jobTitle = jobTitle,
        _onPressed = onPressed,
        _isFavourite = isFavourite,
        _companyName = companyName,
        _college = college,
        _date = date,
        super(key: key);

  final String _jobTitle;
  final String _companyName;
  final String _date;
  final String _college;
  final void Function()? _onPressed;
  final RxBool _isFavourite;

  final JobsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: CollegeIcon.buildCollegeIcon(_college),
              ),
              SizedBox(width: 12.w),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _jobTitle,
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                      child: Text(
                        _companyName,
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 12.sp,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Text(
                      _date,
                      style: TextStyle(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              GetX<JobsController>(
                builder: (controller) => IconButton(
                  icon: _isFavourite.value
                      ? Icon(
                          Icons.bookmark,
                          size: 30.w,
                          color: AppColors.blue,
                        )
                      : Icon(
                          Icons.bookmark_border,
                          size: 30.w,
                          color: AppColors.blue,
                        ),
                  onPressed: _onPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
