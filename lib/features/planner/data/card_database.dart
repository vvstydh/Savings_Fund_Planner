import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:savings_fund_planner/features/planner/data/card.dart';

class CardDataBase {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([CardSchema], directory: dir.path);
  }

  final List<Card> currentCards = [];

  Future<void> addCard(
      String goal,
      double personHas,
      double personNeed,
      int cardColorValueRed,
      int cardColorValueGreen,
      int cardColorValueBlue,
      int progressLineColorValueRed,
      int progressLineColorValueGreen,
      int progressLineColorValueBlue,
      double progressLineValue,
      String cardImagePath) async {
    final newCard = Card();
    newCard.goal = goal;
    newCard.personHas = personHas;
    newCard.personNeed = personNeed;
    newCard.cardColorValueRed = cardColorValueRed;
    newCard.cardColorValueGreen = cardColorValueGreen;
    newCard.cardColorValueBlue = cardColorValueBlue;
    newCard.progressLineColorValueRed = progressLineColorValueRed;
    newCard.progressLineColorValueGreen = progressLineColorValueGreen;
    newCard.progressLineColorValueBlue = progressLineColorValueBlue;
    newCard.progressLineValue = progressLineValue;
    newCard.cardImagePath = cardImagePath;

    await isar.writeTxn(() => isar.cards.put(newCard));

    fetchCards();
  }

  Future<void> fetchCards() async {
    List<Card> fetchedCards = await isar.cards.where().findAll();
    currentCards.clear();
    currentCards.addAll(fetchedCards);
  }

  Future<void> deleteCard(int id) async {
    await isar.writeTxn(() => isar.cards.delete(id));
    await fetchCards();
  }
}
