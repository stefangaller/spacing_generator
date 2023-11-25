# Spacing Generator

## Installation

In your `pubspec.yaml` add the following dependencies:

```yaml
dependencies:
  spacing_generator_annotations: ^0.0.2

dev_dependencies:
  spacing_generator: ^0.0.2
  build_runner: any
```


## Usage

This package allows to simply generate spacings from a file like

```dart
import 'package:flutter/material.dart'; // don't forget to import material

@Spacing()
class SpaceValues {
  
  static const tiny = 2.0;
  static const small = 4.0;
  
}

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

For more information see the `example` in the repository.
