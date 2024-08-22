import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/in_process/card_list_inprocess_item.dart';

class InprocessCardList extends StatelessWidget {
  const InprocessCardList(
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
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
            padding: const EdgeInsets.only(bottom: 170),
            itemCount: cardStore.inProcess.length,
            itemBuilder: (context, index) {
              return CardListInprocessItem(
                index: index,
                cardStore: cardStore,
                rootNavigatorKey: rootNavigatorKey,
                cardDataBase: cardDataBase,
              );
            },
          ),
          Positioned(
            bottom: 90,
            child: UniversalButton(
              text: 'ADD NEW CARD',
              press: () {
                context.go('/cardAdditionGoal', extra: cardStore);
              },
            ),
          ),
        ],
      ),
    );
  }
}
