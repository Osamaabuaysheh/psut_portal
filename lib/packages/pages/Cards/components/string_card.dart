import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class StringCard extends StatelessWidget {
  const StringCard({
    Key? key,
    final String userId = '',
    final double top = 0,
    final double bottom = 0,
    final double right = 0,
    final double left = 0,
    required String name,
    required String collage,
  })  : _userId = userId,
        _top = top,
        _bottom = bottom,
        _right = right,
        _left = left,
        _name = name,
        _collage = collage,
        super(key: key);

  final String _userId;
  final String _name;
  final String _collage;
  final double _top;
  final double _bottom;
  final double _right;
  final double _left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _top.w,
      bottom: _bottom.w,
      right: _right.w,
      left: _left.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 190.w,
            height: 70.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'PSUT$_userId',
                  style: CustomTheme.bigTitle?.copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  _name,
                  style: CustomTheme.bigTitle?.copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  _collage,
                  style: CustomTheme.bigTitle?.copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Image(
            image: AssetImage("assets/images/osama_profilePicture.jpg"),
            width: 50,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
