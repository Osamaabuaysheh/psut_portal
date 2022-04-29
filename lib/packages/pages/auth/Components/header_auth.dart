import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';
import 'package:psut_portal/utils/path_image.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({Key? key, double height = 150})
      : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: _height,
        margin: EdgeInsets.symmetric(vertical: 15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * arrow Back
            ModalRoute.of(context)?.canPop ?? false
                ? BackButton(color: AppColors.bgGreenBold)
                : Container(),
            const Spacer(),
            // * Logo
            Transform.scale(
              scale: 2.w,
              child: const Image(
                image: AssetImage(PathImage.logo),
              ),
            ),
            Spacer(
              flex: ModalRoute.of(context)?.canPop ?? false ? 2 : 1,
            ),
          ],
        ),
      ),
    );
  }
}
