import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermitCard extends StatelessWidget {
  const PermitCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 30.h),
      child: const Image(image: AssetImage("assets/images/Asset 5.png")),
    );
  }
}
