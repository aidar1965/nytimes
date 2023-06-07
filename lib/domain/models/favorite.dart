import 'package:isar/isar.dart';

import '../../data/api/models/section.dart';

part 'favorite.g.dart';

@collection
class Favorite {
  Id id = Isar.autoIncrement;
  @Enumerated(EnumType.name)
  final Section section;
  Favorite({
    required this.section,
  });
}
