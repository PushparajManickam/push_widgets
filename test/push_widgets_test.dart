import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:push_widgets/push_widgets.dart';

void main() {
  testWidgets('PWText renders given text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: PWText('Hello PW'),
        ),
      ),
    );

    expect(find.text('Hello PW'), findsOneWidget);
  });
}
