import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/error/error_network_image.dart';
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
    required String imageUrl,
  })  : _userId = userId,
        _top = top,
        _bottom = bottom,
        _right = right,
        _left = left,
        _name = name,
        _collage = collage,
        _imageUrl = imageUrl,
        super(key: key);

  final String _userId;
  final String _name;
  final String _imageUrl;
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
          CachedNetworkImage(
            imageUrl: _imageUrl,
            height: 60.w,
            width: 50.w,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const ErrorNetworkImage(),
          ),
        ],
      ),
    );
  }
}
