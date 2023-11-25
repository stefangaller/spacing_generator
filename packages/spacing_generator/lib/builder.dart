import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:spacing_generator/src/spacing_generator.dart';

/// Generators for `build_runner`
Builder spacingGenerator(BuilderOptions options) => SharedPartBuilder(
      [SpacingGenerator()],
      'space_builder',
    );
