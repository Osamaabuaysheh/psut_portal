import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Colors.grey.shade300.withOpacity(0.9),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r),
            ),
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
