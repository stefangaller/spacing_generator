// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacings.dart';

// **************************************************************************
// SpacingGenerator
// **************************************************************************

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
  Paddings get paddings => Paddings();
}
