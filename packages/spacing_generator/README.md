# Spacing Generator

## Motivation

Using consistent spacing in your app is very important for a good user experience.
Many times, these spacings are reused in many instances of `SizedBox` or `EdgeInsets`.

`spacing_generator` generates different instances of `SizedBox` and `EdgeInsets` depending on a
specified set of spacings.

For a spacing `static const tiny = 2.0;` the following elements will be generated:

* horizontal `SizedBox`: `SizedBox(width: 2.0)`
* vertical `SizedBox`: `SizedBox(height: 2.0)`
* vertical `EdgeInsets`: `EdgeInsets.symmetric(vertical: 2.0)`
* horizontal `EdgeInsets`: `EdgeInsets.symmetric(horizontal: 2.0)`
* all `EdgeInsets`: `EdgeInsets.all(2.0)`

They can then easily be used with an extension on `BuildContext`:

```dart
//  Paddings (EdgeInsets)
context.paddings

// Spacings (SizedBoxes)
context.spacings
```

## Installation

`spacing_generator` depends on these packages to work:

* [build_runner](https://pub.dev/packages/build_runner)
* [spacing_generator_annotation](https://pub.dev/packages/spacing_generator_annotation)

In your `pubspec.yaml` add the following dependencies:

```yaml
dependencies:
  spacing_generator_annotations: <latest version>

dev_dependencies:
  spacing_generator: <latest version>
  build_runner: any
```

## Usage

This package allows to simply generate spacings from a file like

```dart
import 'package:spacing_generator_annotation/spacing_generator_annotation.dart';
import 'package:flutter/material.dart'; // don't forget to import material

part 'spacings.g.dart';

@Spacing()
class SpaceValues {

  static const tiny = 2.0;
  static const small = 4.0;

}

```

Run the `build_runner` to generate code:

```zsh
dart run build_runner build
```

It creates an extension that allows to use spacings and paddings like:

```dart
Widget build(BuildContext context) {
  return Padding(
      padding: context.paddings.allTiny,
      child: Column(
          children: [
            const Text('Hello'),
            context.spacings.horizontalSmall,
            const Text('World'),
          ]
      )
  );
}
```

Alternatively, the generated files can also be accessed by instantiating the generated classes directly.

```dart
Widget build(BuildContext context) {
  final paddings = Paddings();
  final spaces = Spaces();

  return Padding(
      padding: paddings.allTiny,
      child: Column(
          children: [
            const Text('Hello'),
            spaces.horizontalSmall,
            const Text('World'),
          ]
      )
  );
}
```

For more information see the `example` in the repository.
