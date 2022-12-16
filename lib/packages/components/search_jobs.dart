import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/courses_controller.dart';

class CustomSearch extends StatelessWidget {
  CustomSearch({
    Key? key,
  }) : super(key: key);

  final CourseController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: TextField(
          onChanged: (value) => controller
              .filterList(controller.textEditingController.value.text),
          controller: controller.textEditingController.value,
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
