# FlutterSample(s)

Place for testing new ideas and patterns in Flutter, maybe you will find it useful :)

## Samples:

- BLoC architecture pattern on rx.dart,
- DI on inject.dart (internally used by Google similar to Dagger2),
- Network fetched ListView with local RAM cache (Stackoverflow API v2.2)

## Code generation

First run: (local build_runner cache doesn't know about committed generated files)

```
flutter pub run build_runner build --delete-conflicting-outputs
./gen.sh
```

Next runs:
```
./gen.sh
```
