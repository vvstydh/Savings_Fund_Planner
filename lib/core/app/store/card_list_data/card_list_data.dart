import 'package:flutter/material.dart';

class CardListData {
  const CardListData(
    this.goal,
    this.personHas,
    this.personNeed,
    this.cardColor, this.progressLineValue,
  );
  final String goal;
  final double personHas;
  final double personNeed;
  final Color cardColor;
  final double progressLineValue;
}
