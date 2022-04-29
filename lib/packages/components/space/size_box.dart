import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SB extends StatelessWidget {
  const SB({
    Key? key,
    double? height,
    double? width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double? _height;
  final double? _width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height?.h,
      width: _width?.w,
    );
  }
}
