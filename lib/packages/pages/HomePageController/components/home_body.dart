import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psut_portal/packages/pages/HomePageController/stateManageHome/home_state_pages.dart';

class HomeBodyController extends StatelessWidget {
  const HomeBodyController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeStatePages>(context, listen: false);
    return Consumer<HomeStatePages>(
      builder: (context, value, child) => Scaffold(
        body: provider.currentScreen,
      ),
    );
  }
}
