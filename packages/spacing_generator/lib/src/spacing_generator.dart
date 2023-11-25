import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:spacing_generator/src/padding_generator.dart';
import 'package:spacing_generator/src/sized_box_generator.dart';
import 'package:spacing_generator_annotation/spacing_generator_annotation.dart';

class SpacingGenerator extends GeneratorForAnnotation<Spacing> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final fields = element.children.whereType<VariableElement>();
    final buffer = StringBuffer();

    for (final field in fields) {
      if (!field.type.isDartCoreDouble) {
        throw InvalidGenerationSourceError(
          'Field "${field.name}" needs to be of type double',
          element: field,
        );
      }
    }

    buffer.writeAll(buildSizedBoxes(fields), '\n');
    buffer.writeAll(buildPaddings(fields), '\n');
    buffer.write(_generateExtension());

    return buffer.toString();
  }

  String _generateExtension() {
    return """
    
      extension SpacingExtension on BuildContext {
        Spaces get spaces => const Spaces();
        Paddings get paddings => const Paddings();
      }
    
    """;
  }
}
