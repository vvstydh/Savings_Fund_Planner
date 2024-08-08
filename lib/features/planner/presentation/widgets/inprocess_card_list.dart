import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_list_inprocess_item.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';

class InprocessCardList extends StatelessWidget {
  const InprocessCardList(
      {super.key, required this.cardStore, required this.rootNavigatorKey});
  final CardData cardStore;
  final GlobalKey<NavigatorState> rootNavigatorKey;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Expanded(
                child: Observer(
                    builder: (_) => ListView.builder(
                        itemCount: cardStore.inProcess.length,
                        itemBuilder: (context, index) {
                          return CardListInprocessItem(
                            index: index,
                            cardStore: cardStore,
                            rootNavigatorKey: rootNavigatorKey,
                          );
                        }))),
          ],
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 90),
            child: UniversalButton(
              text: 'ADD NEW CARD',
              press: () {
                context.go('/cardAdditionGoal', extra: cardStore);
              },
            ))
      ],
    ));
  }
}
