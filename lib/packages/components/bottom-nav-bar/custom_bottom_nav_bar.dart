import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'package:psut_portal/packages/pages/HomePageController/stateManageHome/home_state_pages.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: AppColors.mainColor,
      items: const [
        TabItem(icon: Icons.calendar_month_outlined, title: 'Events'),
        TabItem(icon: Icons.business_center_rounded, title: 'Jobs'),
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.groups, title: 'CSO'),
        TabItem(icon: Icons.school_rounded, title: 'Tutor'),
      ],
      initialActiveIndex:
          Provider.of<HomeStatePages>(context, listen: false).selectedPage,
      onTap: (index) =>
          Provider.of<HomeStatePages>(context, listen: false).setPage = index,
      style: TabStyle.textIn,
    );
  }
}
