import 'package:flutter/widgets.dart';

class MenuItem {
  final String id;
  final Widget label;
  final Widget icon;

  const MenuItem({
    required this.id,
    required this.label,
    required this.icon,
  });
}
