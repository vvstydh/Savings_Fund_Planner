import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'card_data.g.dart';

class CardData = CardDataStore with _$CardData;

abstract class CardDataStore with Store {
  @observable
  String goal = '';

  @observable
  String personNeed = '';

  @observable
  String personHas = '';

  @observable
  int colorIndex = 0;

  @observable
  Color cardColor = Colors.white;

  @observable
  List<String> inProcess = [];

  @observable
  List<String> completed = [];

  @action
  add() {
    inProcess.add(goal);
  }

  @action
  changeColor(int index) {
    switch (index) {
      case 0:
        colorIndex = 0;
        cardColor = Colors.white;
      case 1:
        colorIndex = 1;
        cardColor = const Color.fromARGB(255, 212, 240, 255);
      case 2:
        colorIndex = 2;
        cardColor = const Color.fromARGB(255, 241, 212, 255);
      case 3:
        colorIndex = 3;
        cardColor = const Color.fromARGB(255, 255, 248, 212);
      case 4:
        colorIndex = 4;
        cardColor = const Color.fromARGB(255, 255, 225, 212);
    }
  }
}
