import 'package:flutter/material.dart';
import 'package:push_widgets/push_widgets.dart';

/// Simple example app to self-test the package locally.
void main() {
  runApp(const PushWidgetsExampleApp());
}

class PushWidgetsExampleApp extends StatefulWidget {
  const PushWidgetsExampleApp({super.key});

  @override
  State<PushWidgetsExampleApp> createState() => _PushWidgetsExampleAppState();
}

class _PushWidgetsExampleAppState extends State<PushWidgetsExampleApp> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'push_widgets example',
      theme: PWTheme.light,
      darkTheme: PWTheme.dark,
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: const PWAppBar(title: 'push_widgets'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PWText(
                'Hello from PWText! This is a wrapper over Text.',
                textAlign: TextAlign.center,
              ),
              PWSpacer.h(16),
              PWButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('PWButton clicked')), 
                  );
                },
                child: const Text('Click Me'),
              ),
              PWSpacer.h(16),
              PWText('Current theme: ' + (_isDark ? 'Dark' : 'Light')),
              PWSpacer.h(8),
              PWButton(
                onPressed: () => setState(() => _isDark = !_isDark),
                child: const Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}