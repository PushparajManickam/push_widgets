## 0.1.1

- Fix: remove unnecessary `library` directive in `lib/push_widgets.dart`
- Fix: convert dangling library doc comments (`///`) to regular `//` comments in scaffold files
- Fix: example uses string interpolation for analyzer preference
- Docs: clarify README and ensure Material 3 theme usage
- Maintenance: static analysis passes cleanly with `flutter analyze`

## 0.1.0

- Initial release with structured folders under `lib/src/`
- Added Material 3 light/dark theme (`PWTheme`)
- Implemented sample widgets: `PWText`, `PWButton`, `PWAppBar`
- Public exports via `lib/push_widgets.dart`
- Included example app under `/example` with theme toggle
- Added README with docs and publish instructions
