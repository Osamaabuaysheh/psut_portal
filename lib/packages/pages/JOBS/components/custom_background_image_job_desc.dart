import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Constants/API/login_api.dart';

class CustomBackgroundImageJobDesc extends StatelessWidget {
  const CustomBackgroundImageJobDesc({
    Key? key,
    required String imageUrl,
  })  : _imageUrl = imageUrl,
        super(key: key);

  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(23.r),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: SizedBox(
          height: 200.h,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: "${ApiLogin.baseUrl}/$_imageUrl",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
