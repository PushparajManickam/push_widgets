import 'package:flutter/material.dart';

/// PWAppBar: A simple AppBar wrapper with common options.
///
/// Prefer using this to keep a consistent prefix and styling.
class PWAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final double? elevation;

  const PWAppBar({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle = false,
    this.leading,
    this.bottom,
    this.backgroundColor,
    this.elevation,
  });

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + (bottom?.preferredSize.height ?? 0),
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
      centerTitle: centerTitle,
      leading: leading,
      bottom: bottom,
      backgroundColor: backgroundColor,
      elevation: elevation,
    );
  }
}