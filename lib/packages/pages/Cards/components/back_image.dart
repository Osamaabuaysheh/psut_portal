import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackImage extends StatelessWidget {
  const BackImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/personal Card.png",
          ),
          fit: BoxFit.contain,
          opacity: 0.6,
        ),
      ),
    );
  }
}
