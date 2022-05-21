import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/TUTORING/book_tutor.dart';
import 'package:psut_portal/packages/pages/TUTORING/student_card.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutor_signup.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';

class TutorProfile extends StatelessWidget {
  const TutorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          //TODO Stack
          SizedBox(
            //color: Colors.purple,
            width: double.infinity,
            height: 250.h,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300.h,
                  color: AppColors.white,
                ),
                Container(
                  width: double.infinity,
                  height: 172.h,
                  color: AppColors.blue,
                ),
                Positioned(
                  top: 80.h,
                  left: 100.w,
                  child: Container(
                      width: 160.w,
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: AppColors.grey,
                          radius: 7,
                          backgroundImage: const AssetImage(PathImage.tutor),
                        ),
                      )),
                ),
              ],
            ),
          ),

          //TODO details
          SizedBox(
            //color: Colors.red,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //* Name , year and gpa
                Column(
                  children: [
                    const ParaSpacing(),
                    Text(
                      'Yara Al Sadeeq',
                      style: CustomTheme.bigTitle,
                    ),
                    const VerticalDivider(
                      width: 30,
                      thickness: 3,
                      indent: 5,
                      endIndent: 0,
                      color: Colors.red,
                    ),
                    const CustomSpacing(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Year 4',
                            style: CustomTheme.normalBlue
                                ?.copyWith(fontSize: 18.sp),
                          ),
                          Text(
                            '93.4 GPA',
                            style: CustomTheme.normalBlue
                                ?.copyWith(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                    const ParaSpacing(),
                  ],
                ),
                //*Details (course)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Course Name',
                            style:
                                CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                          ),
                          SizedBox(
                            width: 60.w,
                          ),
                          Text(
                            '20141 Physics 1',
                            maxLines: 3,
                            style: CustomTheme.normalBlue
                                ?.copyWith(fontSize: 16.sp),
                          ),
                        ],
                      ),
                      const ParaSpacing(),
                      Text(
                        'Tutor Availability ',
                        style: CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                      ),
                      const CustomSpacing(),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sunday',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10 - 1 AM',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tuesday',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2 - 4 pM',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wednesday',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '8 - 10 AM',
                                    style: CustomTheme.normalBlue
                                        ?.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const ParaSpacing(),
                      Text(
                        'Other Subjects',
                        style: CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                      ),
                      const CustomSpacing(),
                      Text(
                        '21033 Calculus 1',
                        style:
                            CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                      ),
                      const CustomSpacing(),
                      Text(
                        '21032 Calculus 3',
                        style:
                            CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                      ),
                      const ParaSpacing(),
                    ],
                  ),
                ),
                SizedBox(
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
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(43.r),
                          ),
                        ),
                        builder: (context) {
                          return SizedBox(
                              height: 415.h, child: const BookTutor());
                        },
                      );
                    },
                    child: const Text('Book a session'),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TutorSignUp(),
                            ),
                          );
                        },
                        child: const Text('sign up')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudentCards(),
                            ),
                          );
                        },
                        child: Text('Cards'))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
