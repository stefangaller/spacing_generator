import 'package:source_gen_test/source_gen_test.dart';
import 'package:spacing_generator_annotation/spacing_generator_annotation.dart';

@ShouldGenerate(
  r'''
class Spaces {
  const Spaces();
  // vertical
  // horizontal
}

class Paddings {
  const Paddings();
  // vertical
  // horizontal
  // all
}

extension SpacingExtension on BuildContext {
  Spaces get spaces => const Spaces();
  Paddings get paddings => const Paddings();
}
''',
)
@Spacing()
class $_EmptyTest {}

@ShouldGenerate(
  r'''
class Spaces {
  const Spaces();
  // vertical
  SizedBox get verticalTiny => const SizedBox(height: 2.0);
  // horizontal
  SizedBox get horizontalTiny => const SizedBox(width: 2.0);
}

class Paddings {
  const Paddings();
  // vertical
  EdgeInsets get verticalTiny => const EdgeInsets.symmetric(vertical: 2.0);
  // horizontal
  EdgeInsets get horizontalTiny => const EdgeInsets.symmetric(horizontal: 2.0);
  // all
  EdgeInsets get allTiny => const EdgeInsets.all(2.0);
}

extension SpacingExtension on BuildContext {
  Spaces get spaces => const Spaces();
  Paddings get paddings => const Paddings();
}
''',
)
@Spacing()
class $_ValidDoubleContentTest {
  static const double tiny = 2.0;
}

@ShouldThrow('Field "tiny" needs to be of type double')
@Spacing()
class $_InvalidIntContentTest {
  static const int tiny = 2;
}
