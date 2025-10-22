# push_widgets

Prefixed Flutter widgets (`PW*`) and a shared Material 3 theme you can reuse across apps. The goal is consistency, clarity, and collision-free names.

## Features
- Categorized folders: basic, input, layout, navigation, dialog, animation, cupertino, material, advanced, utils
- Common theme system (`PWTheme.light`, `PWTheme.dark`) using Material 3
- Public exports via `lib/push_widgets.dart`
- Example app under `/example` showing usage and self-testing
- Clear code comments and structure for maintainability

## Folder Structure
```
push_widgets/
├── lib/
│   ├── push_widgets.dart
│   └── src/
│       ├── theme/
│       │   └── pw_theme.dart
│       ├── basic/
│       │   └── pw_text.dart
│       ├── input/
│       │   └── pw_button.dart
│       ├── navigation/
│       │   └── pw_app_bar.dart
│       ├── layout/
│       │   └── index.dart
│       ├── dialog/
│       │   └── index.dart
│       ├── animation/
│       │   └── index.dart
│       ├── cupertino/
│       │   └── index.dart
│       ├── material/
│       │   └── index.dart
│       ├── advanced/
│       │   └── index.dart
│       └── utils/
│           ├── index.dart
│           └── pw_spacers.dart
├── example/
│   ├── pubspec.yaml
│   └── lib/
│       └── main.dart
├── test/
│   └── push_widgets_test.dart
├── pubspec.yaml
├── README.md
├── CHANGELOG.md
└── LICENSE
```

## Installation (another project)
Add to your app's `pubspec.yaml` after published:
```yaml
dependencies:
  push_widgets: ^0.1.0
```
Import in code:
```dart
import 'package:push_widgets/push_widgets.dart';
```

## Quick Usage
- Theme:
```dart
MaterialApp(
  theme: PWTheme.light,
  darkTheme: PWTheme.dark,
  themeMode: ThemeMode.system,
)
```
- Text:
```dart
const PWText('Hello PWText', textAlign: TextAlign.center);
```
- Button:
```dart
PWButton(onPressed: () {}, child: const Text('Click Me'));
```
- AppBar:
```dart
Scaffold(appBar: const PWAppBar(title: 'push_widgets'));
```

## Example App (self-test)
Run the local example that depends on `../`:
```bash
cd example
flutter run
```
Use the "Toggle Theme" button to switch between light/dark.

## Publish to pub.dev (step-by-step)
1. Ensure metadata is complete in `pubspec.yaml` (name, description, version, homepage, repository, topics).
2. Update `README.md`, `CHANGELOG.md`, and ensure `LICENSE` is present.
3. Run a dry run:
   ```bash
   flutter pub publish --dry-run
   ```
4. Fix any issues reported.
5. Publish:
   ```bash
   flutter pub publish
   ```

## Create and Structure the Package (step-by-step)
1. Create the package skeleton:
   ```bash
   flutter create --template=package push_widgets
   ```
2. Add categorized folders under `lib/src/` as shown above.
3. Implement sample widgets (`PWText`, `PWButton`, `PWAppBar`) and the `PWTheme`.
4. Export everything via `lib/push_widgets.dart`.
5. Create an `/example` app that depends on `path: ../`.
6. Write docs in `README.md` and notes in `CHANGELOG.md`.

## Import and Use in Another Flutter Project
1. Add dependency in `pubspec.yaml` (published version or local path).
2. Import: `import 'package:push_widgets/push_widgets.dart';`
3. Use `PWTheme` for Material 3 theming, and `PWText`, `PWButton`, `PWAppBar` in your UI.

## Contributing & Issues
- Issues: https://github.com/pushparajmanickam/push_widgets/issues
- Pull requests are welcome. Keep the `PW` prefix convention and Material 3 alignment.

## License
MIT License (see `LICENSE`).
