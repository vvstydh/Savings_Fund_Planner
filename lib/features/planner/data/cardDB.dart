import 'package:isar/isar.dart';

part 'cardDB.g.dart';

@Collection()
class CardDB {
  CardDB(
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

  final String goal;
  final double personHas;
  final double personNeed;
  final int cardColorValueRed;
  final int cardColorValueGreen;
  final int cardColorValueBlue;
  final int progressLineColorValueRed;
  final int progressLineColorValueGreen;
  final int progressLineColorValueBlue;
  final double progressLineValue;
  final String cardImagePath;
}
