import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'package:savings_fund_planner/core/app/store/card_list_data/card_list_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

part 'card_data.g.dart';

class CardData = CardDataStore with _$CardData;

abstract class CardDataStore with Store {
  @observable
  String goal = '';

  @observable
  double personNeed = 0;

  @observable
  double personHas = 0;

  @observable
  double progressLineValue = 0;

  @observable
  int colorIndex = 0;

  @observable
  Color cardColor = Colors.white;

  @observable
  Color progressLineColor = const Color.fromARGB(255, 0, 186, 19);

  @observable
  bool inProcessCompletedSwitch = true;

  @observable
  ObservableList<CardListData> inProcess = ObservableList<CardListData>();

  @observable
  ObservableList<CardListData> completed = ObservableList<CardListData>();

  @action
  createprogresslinevalue() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
  }

  @action
  switchbutton() {
    inProcessCompletedSwitch = !inProcessCompletedSwitch;
  }

  @action
  add() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
    inProcess.add(CardListData(goal, personHas, personNeed, cardColor,
        progressLineValue, progressLineColor));
    goal = '';
    personNeed = 0;
    personHas = 0;
    colorIndex = 0;
    cardColor = Colors.white;
    progressLineColor = const Color.fromARGB(255, 0, 186, 19);
    progressLineValue = 0;
  }

  @action
  remove(int index) {
    inProcess.removeAt(index);
    print(inProcess.length);
  }

  @action
  changeColor(int index) {
    switch (index) {
      case 0:
        colorIndex = 0;
        cardColor = Colors.white;
        progressLineColor = const Color.fromARGB(255, 0, 186, 19);
      case 1:
        colorIndex = 1;
        cardColor = const Color.fromARGB(255, 212, 240, 255);
        progressLineColor = theme.colorScheme.secondary;
      case 2:
        colorIndex = 2;
        cardColor = const Color.fromARGB(255, 241, 212, 255);
        progressLineColor = const Color.fromARGB(255, 245, 50, 249);
      case 3:
        colorIndex = 3;
        cardColor = const Color.fromARGB(255, 255, 248, 212);
        progressLineColor = const Color.fromARGB(255, 255, 223, 64);
      case 4:
        colorIndex = 4;
        cardColor = const Color.fromARGB(255, 255, 225, 212);
        progressLineColor = const Color.fromARGB(255, 249, 110, 50);
    }
  }
}
