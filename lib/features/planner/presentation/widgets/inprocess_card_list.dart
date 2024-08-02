import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';

class InprocessCardList extends StatelessWidget {
  const InprocessCardList({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Expanded(
                    child: Observer(
                        builder: (_) => ListView.builder(
                            itemCount: cardStore.inProcess.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  PlannerCardWidget(
                                    goal: cardStore.inProcess[index].goal,
                                    personHas:
                                        cardStore.inProcess[index].personHas,
                                    personNeed:
                                        cardStore.inProcess[index].personNeed,
                                    cardColor:
                                        cardStore.inProcess[index].cardColor,
                                    progressLineValue: cardStore
                                        .inProcess[index].progressLineValue,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          onPressed: () =>
                                              cardStore.remove(index),
                                          icon: const Icon(
                                            Icons.delete_forever_rounded,
                                            size: 25,
                                          )),
                                    ),
                                  )
                                ],
                              );
                            }))),
                Container(
                    margin: const EdgeInsets.only(bottom: 90),
                    child: UniversalButton(
                      text: 'ADD NEW CARD',
                      press: () {
                        context.go('/cardAdditionGoal', extra: cardStore);
                      },
                    ))
              ],
            )));
  }
}
