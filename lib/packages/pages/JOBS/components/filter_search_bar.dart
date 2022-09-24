import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/search_controller.dart';

class FilterSearchBar extends StatelessWidget {
  FilterSearchBar({
    Key? key,
  }) : super(key: key);

  final SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TextField(
        onChanged: (value) {
          controller.updateList(controller.textEditingController.value.text);
          debugPrint(controller.textEditingController.value.text);
        },
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
    );
  }
}
