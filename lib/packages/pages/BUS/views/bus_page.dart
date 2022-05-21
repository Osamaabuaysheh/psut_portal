import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/BUS/components/bus_page_body.dart';

class BusPage extends StatelessWidget {
  static const String id = "BusPage";
  const BusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarSimple(actions: [PopIconButton()]),
      body: BusPageBody(),
      backgroundColor: Colors.white,
    );
  }
}
