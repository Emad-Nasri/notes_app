import 'package:hive/hive.dart';

part 'note_model.g.dart'; //متل الايمبورت  والدوت جي هي جينيريت

@HiveType(typeId: 0)
class NoteModel
    extends
        HiveObject /*بتخلي الموديل متل الاوبجيكت يتجهز مشان يتخزن معي بهايف*/ {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
