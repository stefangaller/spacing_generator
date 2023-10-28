# Spacing Generator

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

context.paddings.allTiny

context.spacings.horizontalSmall

```