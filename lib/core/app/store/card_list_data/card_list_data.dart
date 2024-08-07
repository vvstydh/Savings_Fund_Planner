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

  final String goal;
  double personHas;
  double personNeed;
  final Color cardColor;
  final Color progressLineColor;
  double progressLineValue;
  final File? cardImage;
}
