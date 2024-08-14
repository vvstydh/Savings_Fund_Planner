import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';

class CompletedCardList extends StatelessWidget {
  const CompletedCardList({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                /*
                Expanded(
                    child: ListView.builder(
                        itemCount: cardStore.completed.length,
                        itemBuilder: (context, index) {
                          return PlannerCardWidget(
                            goal: cardStore.completed[index].goal,
                            personHas: cardStore.completed[index].personHas,
                            personNeed: cardStore.completed[index].personNeed,
                            cardColor: cardStore.completed[index].cardColor,
                            progressLineValue: 1,
                            progressLineColor: cardStore.progressLineColor,
                            cardImage: cardStore.completed[index].cardImage,
                          );
                        })),*/
              ],
            )));
  }
}
