import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/custom_search_delegate.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class FilterSearchBar extends StatelessWidget {
  FilterSearchBar({
    Key? key,
  }) : super(key: key);

  final JobsController controller = Get.put(JobsController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListTile(
        onTap: () =>
            showSearch(context: context, delegate: CustomSearchDelegate()),
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.r),
        ),
        tileColor: Colors.grey.shade300.withOpacity(0.9),
        leading: Icon(Icons.search, color: Colors.grey.shade600),
        title: Text(
          "Search",
          style: CustomTheme.details,
        ),
      ),
    );
  }
}

//TextField(
//           onChanged: (value) {
//             controller.updateList(controller.textEditingController.value.text);
//           },
//           controller: controller.textEditingController.value,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.zero,
//             filled: true,
//             fillColor: Colors.grey.shade300.withOpacity(0.9),
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(10.r),
//             ),
//             hintText: "Search",
//             prefixIcon: Icon(
//               Icons.search,
//               color: Colors.grey.shade600,
//             ),
//           ),
//         ),
