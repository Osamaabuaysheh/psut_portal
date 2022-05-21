import 'package:flutter/material.dart';

class PopIconButton extends StatelessWidget {
  const PopIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.close_outlined),
    );
  }
}
