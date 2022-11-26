import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/JOBS/apply_cv.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class JobDescDetails extends StatelessWidget {
  const JobDescDetails({
    Key? key,
    required String jobTitle,
    required String companyName,
    required String deadLineDate,
    required String jobRequierments,
    required String jobDescription,
    required String jobResponsanbilities,
  })  : _jobTitle = jobTitle,
        _companyName = companyName,
        _jobRequierments = jobRequierments,
        _deadLineDate = deadLineDate,
        _jobDescription = jobDescription,
        _jobResponsanbilities = jobResponsanbilities,
        super(key: key);

  final String _jobTitle;
  final String _companyName;
  final String _deadLineDate;
  final String _jobRequierments;
  final String _jobDescription;
  final String _jobResponsanbilities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _jobTitle,
            style: TextStyle(
                color: AppColors.blue,
                fontSize: 29.sp,
                fontWeight: FontWeight.bold),
          ),
          const CustomSpacing(),
          Text(_companyName,
              style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold)),
          const CustomSpacing(),
          Text('Deadline $_deadLineDate',
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
            child: Text(_jobRequierments,
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
              _jobDescription,
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
              _jobResponsanbilities,
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
                child: Text('Apply before $_deadLineDate',
                    style: TextStyle(color: AppColors.lightBlue)),
              ),
              const CustomSpacing(),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'osamaabuaysheh@gmail.com',
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'Hi Eiman',
                        'body': "Hello World"
                      }),
                    );

                    if (await canLaunchUrl(emailLaunchUri)) {
                      await launchUrl(emailLaunchUri);
                    } else {
                      debugPrint("Appliction is unable to lunch");
                    }
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

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
