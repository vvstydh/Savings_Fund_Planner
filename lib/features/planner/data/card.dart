import 'package:isar/isar.dart';

part 'card.g.dart';

@Collection()
class Card {
  Id id = Isar.autoIncrement;

  late String goal;
  late double personHas;
  late double personNeed;
  late int cardColorValueRed;
  late int cardColorValueGreen;
  late int cardColorValueBlue;
  late int progressLineColorValueRed;
  late int progressLineColorValueGreen;
  late int progressLineColorValueBlue;
  late double progressLineValue;
  late String cardImagePath;
}
