import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigMaterial extends StatelessWidget {
  const ConfigMaterial({Key? key, required Widget child})
      : _child = child,
        super(key: key);
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext ctx, child) => MaterialApp(
        home: _child,
      ),
    );
  }
}
