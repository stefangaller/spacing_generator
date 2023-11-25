import 'package:analyzer/dart/element/element.dart';
import 'package:spacing_generator/src/string_utils.dart';

buildPaddings(Iterable<VariableElement> fields) sync* {
  yield 'class Paddings {';
  yield 'const Paddings();';
  // vertical padding
  yield '  // vertical';
  for (final field in fields) {
    final value = field.computeConstantValue();
    if (value != null) {
      yield 'EdgeInsets get vertical${field.name.capitalize} => const EdgeInsets.symmetric(vertical: ${value.toDoubleValue()});';
    }
  }

  // horizontal padding
  yield '  // horizontal';
  for (final field in fields) {
    final value = field.computeConstantValue();
    if (value != null) {
      yield 'EdgeInsets get horizontal${field.name.capitalize} => const EdgeInsets.symmetric(horizontal: ${value.toDoubleValue()});';
    }
  }

  // all padding
  yield '  // all';
  for (final field in fields) {
    final value = field.computeConstantValue();
    if (value != null) {
      yield 'EdgeInsets get all${field.name.capitalize} => const EdgeInsets.all(${value.toDoubleValue()});';
    }
  }

  yield '}';
}
