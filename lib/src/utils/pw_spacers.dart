import 'package:flutter/widgets.dart';

/// PWSpacer: Simple spacing helpers using [SizedBox].
class PWSpacer {
  /// Horizontal space.
  static SizedBox w(double width) => SizedBox(width: width);

  /// Vertical space.
  static SizedBox h(double height) => SizedBox(height: height);
}