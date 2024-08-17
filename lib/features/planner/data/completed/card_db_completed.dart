import 'package:isar/isar.dart';

part 'card_db_completed.g.dart';

@Collection()
class CardDbCompleted {
  CardDbCompleted(
      {required this.goal,
      required this.personHas,
      required this.personNeed,
      required this.cardColorValueRed,
      required this.cardColorValueGreen,
      required this.cardColorValueBlue,
      required this.progressLineColorValueRed,
      required this.progressLineColorValueGreen,
      required this.progressLineColorValueBlue,
      required this.progressLineValue,
      required this.cardImagePath});

  Id id = Isar.autoIncrement;

  String goal;
  double personHas;
  double personNeed;
  int cardColorValueRed;
  int cardColorValueGreen;
  int cardColorValueBlue;
  int progressLineColorValueRed;
  int progressLineColorValueGreen;
  int progressLineColorValueBlue;
  double progressLineValue;
  String cardImagePath;
}
