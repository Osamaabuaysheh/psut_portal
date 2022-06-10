import 'package:flutter/material.dart';

class PopIconButton extends StatelessWidget {
  const PopIconButton({
    Key? key,
    final Color? color,
  })  : _color = color,
        super(key: key);

  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.close_outlined,
        color: _color,
      ),
    );
  }
}
