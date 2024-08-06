import 'package:flutter/material.dart';

class CardListData {
  const CardListData(
    this.goal,
    this.personHas,
    this.personNeed,
    this.cardColor, this.progressLineValue, this.progressLineColor,
  );
  final String goal;
  final double personHas;
  final double personNeed;
  final Color cardColor;
  final Color progressLineColor;
  final double progressLineValue;
}
