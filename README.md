# FlutterSample(s)

Place for testing new ideas and patterns in Flutter, maybe you will find it useful :)

## Samples:

- BLoC architecture pattern on rx.dart,
- DI on Google inject.dart (in dev lib similar to Dagger2),
- Network fetched ListView with local RAM cache (Stackoverflow API v2.2)

## Code generation

First run: (local build_runner cache doesn't know about commited generated files)

```
flutter pub run build_runner build --delete-conflicting-outputs
./gen.sh
```

Next runs:
```
./gen.sh
```
