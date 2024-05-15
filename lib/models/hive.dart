import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Notes {
  @HiveField(0)
  final int Id;
  @HiveField(1)
  final String Title;
  @HiveField(2)
  final String content;
  Notes({required this.Id, required this.Title, required this.content});
}
