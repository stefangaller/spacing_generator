import 'package:source_gen_test/source_gen_test.dart';
import 'package:spacing_generator/src/spacing_generator.dart';

Future<void> main() async {
  initializeBuildLogTracking();

  final reader = await initializeLibraryReaderForDirectory(
    'test/inputs',
    'spacing_generator_test_inputs.dart',
  );

  testAnnotatedElements(reader, SpacingGenerator());
}
