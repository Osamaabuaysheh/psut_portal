import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';

class CardsPage extends StatelessWidget {
  static const String id = 'CardsPage';
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        key: _key,
        actions: const [PopIconButton()],
      ),
      body: Center(
        child: FloatingSearchBar(
          builder: (context, transition) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Material(
                color: Colors.white,
                elevation: 4.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: Colors.accents.map(
                    (color) {
                      return Container(height: 112, color: color);
                    },
                  ).toList(),
                ),
              ),
            );
          },
        ),
      ),
      drawer: const BodyDrawer(),
    );
  }
}
