import 'package:hive/hive.dart';
part 'notemodel.g.dart';

@HiveType(typeId: 0)
class notemodel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;
  notemodel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
