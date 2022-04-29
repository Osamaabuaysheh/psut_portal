import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'path_icons.dart';

class AppSvg {
  static final SvgPicture dTranslate = SvgPicture.asset(
    PathIcons.language,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture dTheme = SvgPicture.asset(
    PathIcons.theme,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture dlogout = SvgPicture.asset(
    PathIcons.logout,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture psutLogo = SvgPicture.asset(
    PathIcons.psutIcon,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture psutLogoGreen = SvgPicture.asset(
    PathIcons.psutIconGreen,
    width: 25.w,
    height: 25.h,
    color: Colors.amber,
  );
  static final SvgPicture avatar = SvgPicture.asset(
    PathIcons.avatar,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture groupPeople = SvgPicture.asset(
    PathIcons.groupPeople,
    width: 25.w,
    height: 25.h,
  );
}
