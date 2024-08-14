import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';
import 'package:savings_fund_planner/features/planner/data/cardDB.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';

class ImageAddition extends StatelessWidget {
  const ImageAddition(
      {super.key, required this.cardStore, required this.cardDataBase});
  final CardData cardStore;
  final CardDataBase cardDataBase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarForCardAddition(
          appBarText: 'New card',
          height: 40,
          route: '/cardAdditionTheme',
          cardStore: cardStore,
        ),
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          margin: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProgressPanel(
                    goalColor: theme.colorScheme.secondary,
                    savingsColor: theme.colorScheme.secondary,
                    themeColor: theme.colorScheme.secondary,
                    imageColor: theme.colorScheme.secondary,
                    textGoalTheme: theme.textTheme.titleMedium,
                    textSavingsTheme: theme.textTheme.titleMedium,
                    textThemeTheme: theme.textTheme.titleMedium,
                    textImageTheme: theme.textTheme.titleMedium,
                  ),
                  Observer(
                      builder: (_) => PlannerCardWidget(
                            goal: cardStore.goal,
                            personHas: cardStore.personHas,
                            personNeed: cardStore.personNeed,
                            progressLineValue: 1,
                            cardColorValueRed: cardStore.cardColorValueRed,
                            cardColorValueGreen: cardStore.cardColorValueGreen,
                            cardColorValueBlue: cardStore.cardColorValueBlue,
                            progressLineColorValueRed:
                                cardStore.progressLineColorValueRed,
                            progressLineColorValueGreen:
                                cardStore.progressLineColorValueGreen,
                            progressLineColorValueBlue:
                                cardStore.progressLineColorValueBlue,
                            cardImagePath: cardStore.cardImagePath,
                          )),
                  Observer(
                      builder: (_) => cardStore.cardImagePath == ''
                          ? UniversalButton(
                              text: 'ADD PHOTO',
                              press: () {
                                cardStore.pickImage();
                              },
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 300,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            theme.colorScheme.secondary,
                                      ),
                                      onPressed: () {
                                        cardStore.pickImage();
                                      },
                                      child: Text(
                                        'REPLACE PHOTO',
                                        style: theme.textTheme.bodySmall,
                                      )),
                                ),
                                Container(
                                  height: 50,
                                  width: 300,
                                  margin: const EdgeInsets.only(
                                      bottom: 20, top: 10),
                                  child: TextButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            theme.colorScheme.primary,
                                      ),
                                      onPressed: () {
                                        cardStore.cardImagePath = '';
                                      },
                                      child: Text(
                                        'DELETE PHOTO',
                                        style: theme.textTheme.titleLarge,
                                      )),
                                ),
                              ],
                            ))
                ],
              )),
              UniversalButton(
                  text: 'NEXT',
                  press: () {
                    cardStore.add();
                    cardDataBase.addCard(CardDB(
                      goal: cardStore.goal,
                      personHas: cardStore.personHas,
                      personNeed: cardStore.personNeed,
                      cardColorValueRed: cardStore.cardColorValueRed,
                      cardColorValueGreen: cardStore.cardColorValueGreen,
                      cardColorValueBlue: cardStore.cardColorValueBlue,
                      progressLineColorValueRed:
                          cardStore.progressLineColorValueRed,
                      progressLineColorValueGreen:
                          cardStore.progressLineColorValueGreen,
                      progressLineColorValueBlue:
                          cardStore.progressLineColorValueBlue,
                      progressLineValue: cardStore.progressLineValue,
                      cardImagePath: cardStore.cardImagePath,
                    ));
                    cardDataBase.fetchCards();
                    cardStore.unEdited();
                    context.go(
                      '/',
                    );
                  })
            ],
          ),
        ));
  }
}
