import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';

class CustomCollegeIconTabBar extends StatelessWidget {
  const CustomCollegeIconTabBar({
    Key? key,
    required final String? imageName,
    required final String? title,
  })  : _imageName = imageName,
        _title = title,
        super(key: key);

  final String? _imageName;
  final String? _title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 55.w,
          height: 55.h,
          child: Image(
            image: (AssetImage(_imageName ?? PathImage.itLogo)),
          ),
        ),
        Text(
          _title ?? "IT",
          style: CustomTheme.normalBlue
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: 10.sp),
        )
      ],
    );
  }
}
