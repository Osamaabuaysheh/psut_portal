import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Constants/API/login_api.dart';

class ClubIconImage extends StatelessWidget {
  const ClubIconImage({
    Key? key,
    required final String iconImage,
  })  : _iconImage = iconImage,
        super(key: key);

  final String _iconImage;

  @override
  Widget build(BuildContext context) {
    return Baseline(
      baseline: 50.h,
      baselineType: TextBaseline.alphabetic,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(100.r),
        child: Container(
          width: 90.w,
          height: 100.h,
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CachedNetworkImage(
                imageUrl: "${ApiLogin.baseUrl}/$_iconImage",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
