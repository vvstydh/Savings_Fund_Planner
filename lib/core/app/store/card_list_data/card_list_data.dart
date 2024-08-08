import 'dart:io';

import 'package:flutter/material.dart';

class CardListData {
  CardListData(
    this.goal,
    this.cardColor,
    this.progressLineColor,
    this.cardImage, {
    this.progressLineValue = 0,
    this.personHas = 0,
    this.personNeed = 0,
  });

  String goal;
  double personHas;
  double personNeed;
  Color cardColor;
  Color progressLineColor;
  double progressLineValue;
  File? cardImage;
}
