import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';

class BackgroundImageClub extends StatelessWidget {
  const BackgroundImageClub({
    Key? key,
    required final String imageName,
  })  : _imageName = imageName,
        super(key: key);

  final String _imageName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(_imageName),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        Positioned(
          height: 60.h,
          child: const PopIconButton(
            icon: Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
