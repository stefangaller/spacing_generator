import 'package:analyzer/dart/element/element.dart';
import 'package:spacing_generator/src/string_utils.dart';

buildSizedBoxes(Iterable<VariableElement> fields) sync* {
  yield 'class Spaces {';
  yield 'const Spaces();';
  // vertical boxes
  yield '  // vertical';
  for (final field in fields) {
    final value = field.computeConstantValue();
    if (value != null) {
      yield 'SizedBox get vertical${field.name.capitalize} => const SizedBox(height: ${value.toDoubleValue()});';
    }
  }

  // horizontal boxes
  yield '  // horizontal';
  for (final field in fields) {
    final value = field.computeConstantValue();
    if (value != null) {
      yield 'SizedBox get horizontal${field.name.capitalize} => const SizedBox(width: ${value.toDoubleValue()});';
    }
  }

  yield '}';
}
