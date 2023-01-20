import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/pages/Cards/components/home_body.dart';

class CardsPage extends StatelessWidget {
  static const String id = '/CardsPage';
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        key: _key,
        actions: [
          SizedBox(width: 50.w),
        ],
      ),
      body: const HomeBodyCards(),
    );
  }
}
