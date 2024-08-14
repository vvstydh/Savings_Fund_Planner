import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/choose_color_row.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';

class ThemeAddition extends StatelessWidget {
  const ThemeAddition({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarForCardAddition(
          appBarText: 'New card',
          height: 40,
          route: '/cardAdditionSavings',
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
                    imageColor: theme.colorScheme.tertiary,
                    textGoalTheme: theme.textTheme.titleMedium,
                    textSavingsTheme: theme.textTheme.titleMedium,
                    textThemeTheme: theme.textTheme.titleMedium,
                    textImageTheme: theme.textTheme.titleSmall,
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
                  Text(
                    'Choose the color for your card',
                    style: theme.textTheme.labelLarge,
                  ),
                  ChooseColorRow(
                    cardStore: cardStore,
                  )
                ],
              )),
              UniversalButton(
                  text: 'NEXT',
                  press: () {
                    context.go('/cardAdditionImage', extra: cardStore);
                  })
            ],
          ),
        ));
  }
}
