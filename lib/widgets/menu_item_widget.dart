import 'package:flutter/material.dart';
import 'package:flutter_chat_reactions/model/menu_item.dart';

/// Single menu item widget with animation
class MenuItemWidget extends StatelessWidget {
  /// Creates a menu item widget.
  const MenuItemWidget({
    super.key,
    required this.item,
    required this.index,
    required this.onTap,
    this.padding = EdgeInsets.zero,
  });

  final MenuItem item;
  final int index;
  final EdgeInsetsGeometry padding;
  final Function(MenuItem, int) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: () => onTap(item, index),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item.label,
            item.icon,
          ],
        ),
      ),
    );
  }
}
