import 'package:hive/hive.dart';

part 'notedpad.g.dart';

@HiveType(typeId: 1)
class NotePad extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  DateTime dateTime;
  NotePad(
      {required this.title, required this.description, required this.dateTime});
}
