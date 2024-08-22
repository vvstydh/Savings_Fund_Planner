import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/completed/card_list_completed_item.dart';

class CompletedCardList extends StatelessWidget {
  const CompletedCardList(
      {super.key,
      required this.cardStore,
      required this.rootNavigatorKey,
      required this.cardDataBase});
  final CardData cardStore;
  final GlobalKey<NavigatorState> rootNavigatorKey;
  final CardDataBase cardDataBase;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: cardStore.completed.length,
            itemBuilder: (context, index) {
              return CardListCompletedItem(
                index: index,
                cardStore: cardStore,
                rootNavigatorKey: rootNavigatorKey,
                cardDataBase: cardDataBase,
              );
            }));
  }
}
