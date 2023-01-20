import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/utils/path_image.dart';
import 'package:psut_portal/utils/svg_images.dart';

class CollegeIcon {
  static Widget buildCollegeIcon(String college) {
    switch (college.toUpperCase()) {
      case 'Faculty of Computing Sciences':
        return SizedBox(
          child: const Image(
            image: AssetImage(PathImage.itLogo),
          ),
          width: 50.w,
          height: 50.w,
        );
      case 'ENGINEER':
        return SizedBox(
          child: const Image(
            image: AssetImage(PathImage.engLogo),
          ),
          width: 50.w,
          height: 50.w,
        );
      case 'BUSINESS':
        return SizedBox(
          child: const Image(
            image: AssetImage(PathImage.busiLogo),
          ),
          width: 50.w,
          height: 50.w,
        );

      default:
        return SizedBox(
          child: AppSvg.psutLogo,
          width: 50.w,
          height: 50.w,
        );
    }
  }
}
