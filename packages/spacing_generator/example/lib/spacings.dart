import 'package:flutter/material.dart';
import 'package:spacing_generator_annotation/spacing_generator_annotation.dart';

part 'spacings.g.dart';

@Spacing()
class Spacings {
  static const tiny = 2.0;
  static const small = 4.0;
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddings.allSmall,
      child: Column(
        children: [
          const Text('Hello'),
          context.spaces.verticalTiny,
          const Text('World'),
        ],
      ),
    );
  }
}
