// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacings.dart';

// **************************************************************************
// SpacingGenerator
// **************************************************************************

class Spaces {
  const Spaces();
  // vertical
  SizedBox get verticalTiny => const SizedBox(height: 2.0);
  SizedBox get verticalSmall => const SizedBox(height: 4.0);
  SizedBox get verticalMedium => const SizedBox(height: 8.0);
  // horizontal
  SizedBox get horizontalTiny => const SizedBox(width: 2.0);
  SizedBox get horizontalSmall => const SizedBox(width: 4.0);
  SizedBox get horizontalMedium => const SizedBox(width: 8.0);
}

class Paddings {
  const Paddings();
  // vertical
  EdgeInsets get verticalTiny => const EdgeInsets.symmetric(vertical: 2.0);
  EdgeInsets get verticalSmall => const EdgeInsets.symmetric(vertical: 4.0);
  EdgeInsets get verticalMedium => const EdgeInsets.symmetric(vertical: 8.0);
  // horizontal
  EdgeInsets get horizontalTiny => const EdgeInsets.symmetric(horizontal: 2.0);
  EdgeInsets get horizontalSmall => const EdgeInsets.symmetric(horizontal: 4.0);
  EdgeInsets get horizontalMedium =>
      const EdgeInsets.symmetric(horizontal: 8.0);
  // all
  EdgeInsets get allTiny => const EdgeInsets.all(2.0);
  EdgeInsets get allSmall => const EdgeInsets.all(4.0);
  EdgeInsets get allMedium => const EdgeInsets.all(8.0);
}

extension SpacingExtension on BuildContext {
  Spaces get spaces => const Spaces();
  Paddings get paddings => const Paddings();
}
