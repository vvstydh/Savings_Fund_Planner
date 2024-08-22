import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/data/completed/card_db_completed.dart';
import 'package:savings_fund_planner/features/planner/data/in_process/card_db.dart';

class CardDataBase {
  final CardData cardStore;

  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([CardDBSchema, CardDbCompletedSchema],
        directory: dir.path);
  }

  CardDataBase({required this.cardStore});

  Future<void> addCard(CardDB card) async {
    await isar.writeTxn(() => isar.cardDBs.put(card));
    fetchCards();
    cardStore.unEdited();
  }

  Future<void> addCompletedCard(CardDbCompleted card) async {
    await isar.writeTxn(() => isar.cardDbCompleteds.put(card));
    fetchCards();
  }

  Future<void> addAmountCard(CardDB card, BuildContext context) async {
    final existingCard = await isar.cardDBs.get(card.id);
    if (existingCard != null) {
      existingCard.personHas += cardStore.cardAddAmount;
      existingCard.additionHistory = [
        ...existingCard.additionHistory,
        AddHistory()
          ..date = DateFormat('MMMM d').format(DateTime.now())
          ..amount = cardStore.cardAddAmount
          ..char = '+'
          ..additionAmountHistory = existingCard.personHas
      ];
      existingCard.progressLineValue =
          (existingCard.personHas / (existingCard.personNeed / 100)) / 100;

      if (existingCard.personHas >= existingCard.personNeed) {
        addCompletedCard(CardDbCompleted(
            goal: existingCard.goal,
            personHas: existingCard.personNeed,
            personNeed: existingCard.personNeed,
            cardColorValueRed: existingCard.cardColorValueRed,
            cardColorValueGreen: existingCard.cardColorValueGreen,
            cardColorValueBlue: existingCard.cardColorValueBlue,
            progressLineColorValueRed: existingCard.progressLineColorValueRed,
            progressLineColorValueGreen:
                existingCard.progressLineColorValueGreen,
            progressLineColorValueBlue: existingCard.progressLineColorValueBlue,
            progressLineValue: existingCard.progressLineValue,
            cardImagePath: existingCard.cardImagePath,
            additionHistory: existingCard.additionHistory));
        deleteCard(existingCard.id);
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      } else {
        await isar.writeTxn(() => isar.cardDBs.put(existingCard));
      }
    }
    fetchCards();
    cardStore.cardAddAmount = 0;
  }

  Future<void> removeAmountCard(CardDB card) async {
    final existingCard = await isar.cardDBs.get(card.id);
    if (existingCard != null) {
      if (cardStore.cardAddAmount <= existingCard.personHas) {
        existingCard.personHas -= cardStore.cardAddAmount;

        existingCard.additionHistory = [
          ...existingCard.additionHistory,
          AddHistory()
            ..date = DateFormat('MMMM d').format(DateTime.now())
            ..amount = cardStore.cardAddAmount
            ..char = '-'
            ..additionAmountHistory = existingCard.personHas
        ];
        existingCard.progressLineValue =
            (existingCard.personHas / (existingCard.personNeed / 100)) / 100;
        await isar.writeTxn(() => isar.cardDBs.put(existingCard));
      }
    }
    fetchCards();
    cardStore.cardAddAmount = 0;
  }

  Future<void> edittCard(CardDB card) async {
    final existingCard = await isar.cardDBs.get(card.id);
    if (existingCard != null) {
      existingCard.goal = cardStore.goal;
      existingCard.personHas = cardStore.personHas;
      existingCard.personNeed = cardStore.personNeed;
      existingCard.cardColorValueRed = cardStore.cardColorValueRed;
      existingCard.cardColorValueGreen = cardStore.cardColorValueGreen;
      existingCard.cardColorValueBlue = cardStore.cardColorValueBlue;
      existingCard.progressLineColorValueRed =
          cardStore.progressLineColorValueRed;
      existingCard.progressLineColorValueGreen =
          cardStore.progressLineColorValueGreen;
      existingCard.progressLineColorValueBlue =
          cardStore.progressLineColorValueBlue;
      existingCard.progressLineValue = cardStore.progressLineValue;
      existingCard.cardImagePath = cardStore.cardImagePath;
      await isar.writeTxn(() => isar.cardDBs.put(existingCard));
    }
    fetchCards();
    cardStore.unEdited();
  }

  Future<void> fetchCards() async {
    cardStore.inProcess.clear();
    cardStore.completed.clear();
    cardStore.inProcess =
        ObservableList<CardDB>.of(await isar.cardDBs.where().findAll());
    cardStore.completed = ObservableList<CardDbCompleted>.of(
        await isar.cardDbCompleteds.where().findAll());
  }

  Future<void> deleteCard(int id) async {
    await isar.writeTxn(() => isar.cardDBs.delete(id));
    fetchCards();
  }

  Future<void> deleteCompletedCard(int id) async {
    await isar.writeTxn(() => isar.cardDbCompleteds.delete(id));
    fetchCards();
  }
}
