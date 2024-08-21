import 'dart:ffi';

import 'package:isar/isar.dart';

part 'card_db.g.dart';

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
      required this.cardImagePath,
      required this.additionHistory});

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
  List<AddHistory> additionHistory = [];
}

@embedded
class AddHistory {
  AddHistory();

  DateTime date = DateTime.now();
  double ammount = 0;
  String char = '';
}
