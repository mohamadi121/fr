import 'package:isar/isar.dart';

abstract class IsarModel {
  Id id = Isar
      .autoIncrement; // All models will have an 'id' field for the primary key
}
