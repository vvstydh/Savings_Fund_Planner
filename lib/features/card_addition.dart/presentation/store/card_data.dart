import 'package:mobx/mobx.dart';

part 'card_data.g.dart';

class CardData = CardDataStore with _$CardData;

abstract class CardDataStore with Store {
  @observable
  String goal = '';

  @observable
  List<String> list = [];

  @action
  add(){
    list.add(goal);
  }
}
