import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

import 'package:savings_fund_planner/core/app/store/card_list_data/card_list_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/planner/data/cardDB.dart';

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
  double cardAddAmount = 0;

  @observable
  int colorIndex = 0;

  @observable
  int cardColorValueRed = 255;

  @observable
  int cardColorValueGreen = 255;

  @observable
  int cardColorValueBlue = 255;

  @observable
  int progressLineColorValueRed = 0;

  @observable
  int progressLineColorValueGreen = 186;

  @observable
  int progressLineColorValueBlue = 19;

  @observable
  String cardImagePath = '';

  @observable
  Color cardColor = const Color.fromARGB(255, 255, 255, 255);

  @observable
  File? cardImage;

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
    inProcess.add(CardListData(goal, cardColor, progressLineColor, cardImage,
        progressLineValue: progressLineValue,
        personHas: personHas,
        personNeed: personNeed));
    unEdited();
  }

  @action
  removeFromInprocess(int index) {
    inProcess.removeAt(index);
  }

  @action
  removeFromCompleted(int index) {
    inProcess.removeAt(index);
  }

  @action
  changeColor(int index) {
    switch (index) {
      case 0:
        colorIndex = 0;
        progressLineColor = const Color.fromARGB(255, 0, 186, 19);
        cardColorValueRed = 255;
        cardColorValueGreen = 255;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 0;
        progressLineColorValueGreen = 186;
        progressLineColorValueBlue = 19;
      case 1:
        colorIndex = 1;
        cardColorValueRed = 212;
        cardColorValueGreen = 240;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 50;
        progressLineColorValueGreen = 82;
        progressLineColorValueBlue = 249;
      case 2:
        colorIndex = 2;
        cardColorValueRed = 241;
        cardColorValueGreen = 212;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 245;
        progressLineColorValueGreen = 50;
        progressLineColorValueBlue = 249;
      case 3:
        colorIndex = 3;
        cardColorValueRed = 255;
        cardColorValueGreen = 248;
        cardColorValueBlue = 212;
        progressLineColorValueRed = 255;
        progressLineColorValueGreen = 223;
        progressLineColorValueBlue = 64;
      case 4:
        colorIndex = 4;
        cardColorValueRed = 255;
        cardColorValueGreen = 225;
        cardColorValueBlue = 212;
        progressLineColorValueRed = 249;
        progressLineColorValueGreen = 110;
        progressLineColorValueBlue = 50;
    }
  }

  addAmount(int index, BuildContext context) {
    inProcess[index].personHas += cardAddAmount;
    inProcess[index].progressLineValue =
        (inProcess[index].personHas / (inProcess[index].personNeed / 100)) /
            100;
    if (inProcess[index].personHas >= inProcess[index].personNeed) {
      inProcess[index].personHas = inProcess[index].personNeed;
      Navigator.pop(context);
      completed.add(inProcess[index]);
      removeFromInprocess(index);
    }
    cardAddAmount = 0;
  }

  removeAmount(int index) {
    inProcess[index].personHas -= cardAddAmount;
    inProcess[index].progressLineValue =
        (inProcess[index].personHas / (inProcess[index].personNeed / 100)) /
            100;
    cardAddAmount = 0;
  }

  cardColorIndexCheck(Color cardColor) {
    switch (cardColor) {
      case Colors.white:
        colorIndex = 0;
      case const Color.fromARGB(255, 212, 240, 255):
        colorIndex = 1;
      case const Color.fromARGB(255, 241, 212, 255):
        colorIndex = 2;
      case const Color.fromARGB(255, 255, 248, 212):
        colorIndex = 3;
      case const Color.fromARGB(255, 255, 225, 212):
        colorIndex = 4;
    }
  }

  goToEdit(int index) {
    cardColorIndexCheck(inProcess[index].cardColor);
    goal = inProcess[index].goal;
    personHas = inProcess[index].personHas;
    personNeed = inProcess[index].personNeed;
    progressLineValue = inProcess[index].progressLineValue;
    progressLineColor = inProcess[index].progressLineColor;
    cardColor = inProcess[index].cardColor;
    cardImage = inProcess[index].cardImage;
  }

  updateLine() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
  }

  edited(int index) {
    inProcess[index].goal = goal;
    inProcess[index].personHas = personHas;
    inProcess[index].personNeed = personNeed;
    inProcess[index].progressLineValue =
        (inProcess[index].personHas / (inProcess[index].personNeed / 100)) /
            100;
    inProcess[index].progressLineColor = progressLineColor;
    inProcess[index].cardColor = cardColor;
    inProcess[index].cardImage = cardImage;
    unEdited();
  }

  unEdited() {
    goal = '';
    personNeed = 0;
    personHas = 0;
    colorIndex = 0;
    cardColor = Colors.white;
    progressLineColor = const Color.fromARGB(255, 0, 186, 19);
    progressLineValue = 0;
    cardImage = null;
    cardColorValueRed = 255;
    cardColorValueGreen = 255;
    cardColorValueBlue = 255;
    progressLineColorValueRed = 0;
    progressLineColorValueGreen = 186;
    progressLineColorValueBlue = 19;
    cardImagePath = '';
  }

  @action
  Future pickImage() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;

    cardImagePath = returnedImage.path;

    cardImage = File(returnedImage.path);
  }
}
