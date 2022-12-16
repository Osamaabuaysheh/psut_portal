import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Constants/API/login_api.dart';

class CustomIconImageJobDesc extends StatelessWidget {
  const CustomIconImageJobDesc({
    Key? key,
    required String imageUrl,
  })  : _imageUrl = imageUrl,
        super(key: key);
  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(27.r),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: 95.w,
        height: 85.h,
        padding: EdgeInsets.all(15.w),
        child: CachedNetworkImage(
          imageUrl: "${ApiLogin.baseUrl}/$_imageUrl",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
