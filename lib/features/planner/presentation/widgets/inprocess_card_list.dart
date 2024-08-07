import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_list_item.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';

class InprocessCardList extends StatelessWidget {
  const InprocessCardList({super.key, required this.cardStore});
  final CardData cardStore;

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
                          return CardListItem(
                            goal: cardStore.inProcess[index].goal,
                            personHas: cardStore.inProcess[index].personHas,
                            personNeed: cardStore.inProcess[index].personNeed,
                            cardColor: cardStore.inProcess[index].cardColor,
                            progressLineValue:
                                cardStore.inProcess[index].progressLineValue,
                            progressLineColor:
                                cardStore.inProcess[index].progressLineColor,
                            index: index,
                            remove: () {
                              cardStore.remove(index);
                            },
                            cardImage: cardStore.inProcess[index].cardImage,
                            cardStore: cardStore,
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
