import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';

class CardsPage extends StatelessWidget {
  static const String id = 'CardsPage';
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        title: "",
        key: _key,
      ),
      body: const Center(
        child: Text("Cards Page"),
      ),
    );
  }
}
