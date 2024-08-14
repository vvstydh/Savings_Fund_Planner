import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:savings_fund_planner/features/planner/data/cardDB.dart';

class CardDataBase {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([CardDBSchema], directory: dir.path);
  }

  final List<CardDB> currentCards = [];

  Future<void> addCard(CardDB card) async {
    await isar.writeTxn(() => isar.cardDBs.put(card));

    fetchCards();
  }

  Future<void> fetchCards() async {
    List<CardDB> fetchedCards = await isar.cardDBs.where().findAll();
    currentCards.clear();
    currentCards.addAll(fetchedCards);
    print(currentCards.length);
  }

  Future<void> deleteCard(int id) async {
    await isar.writeTxn(() => isar.cardDBs.delete(id));
    await fetchCards();
  }
}
