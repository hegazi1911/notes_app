import 'package:hive/hive.dart';
part 'note_Model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final title;
  @HiveField(1)
  final supTitle;
  @HiveField(2)
  final date;
  @HiveField(3)
  final color;

  NoteModel(
      {required this.title,
      required this.supTitle,
      required this.date,
      required this.color});
}
