import 'package:flutter/material.dart';

/// PWButton: A customizable wrapper around [ElevatedButton].
///
/// Example:
/// ```dart
/// PWButton(
///   onPressed: () {},
///   child: const Text('Click Me'),
/// )
/// ```
class PWButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const PWButton({
    super.key,
    required this.child,
    this.onPressed,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}