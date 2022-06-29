import 'package:flutter/material.dart';

class PopIconButton extends StatelessWidget {
  const PopIconButton({
    Key? key,
    final Color? color,
    final double size = 24,
    final IconData? icon = Icons.close_outlined,
  })  : _color = color,
        _size = size,
        _icon = icon,
        super(key: key);

  final Color? _color;
  final double _size;
  final IconData? _icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        _icon,
        color: _color,
        size: _size,
      ),
    );
  }
}
