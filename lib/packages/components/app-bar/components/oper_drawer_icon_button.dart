import 'package:flutter/material.dart';

class OpenDrawerIconButton extends StatelessWidget {
  const OpenDrawerIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      icon: const Icon(Icons.dehaze_outlined),
    );
  }
}
