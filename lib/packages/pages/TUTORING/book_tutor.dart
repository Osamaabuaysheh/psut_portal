import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class BookTutor extends StatelessWidget {
  const BookTutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 30,
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
      //color: Colors.red,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please select a session',
              style: CustomTheme.bigTitle?.copyWith(fontSize: 23),
            ),
            Text(
              '''Note that if a session cannot take place if it has less than 5 students ''',
              style: CustomTheme.normalBlue?.copyWith(fontSize: 18),
            ),
            const ParaSpacing(),
            SizedBox(
              width: 341.w,
              height: 52.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunday',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Text(
                      '10 - 11 AM',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          '3',
                          style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                        ),
                        Icon(
                          Icons.person,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.white,
                  elevation: 0,
                ),
              ),
            ),
            const CustomSpacing(),
            SizedBox(
              width: 341.w,
              height: 52.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Tuesday',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Text(
                      '2 - 4 PM',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          '1',
                          style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                        ),
                        Icon(
                          Icons.person,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.white,
                  elevation: 0,
                ),
              ),
            ),
            const CustomSpacing(),
            SizedBox(
              width: 341.w,
              height: 52.h,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Wednesday',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Text(
                      '2 - 4 PM',
                      style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          '7',
                          style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
                        ),
                        Icon(
                          Icons.person,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.white,
                  elevation: 0,
                ),
              ),
            ),
            const ParaSpacing(),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 238.w,
                height: 52.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    textStyle: CustomTheme.bigTitle
                        ?.copyWith(color: AppColors.white, fontSize: 24.sp),
                  ),
                  onPressed: () {},
                  child: const Text('Book a session'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
