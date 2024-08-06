import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';

class ImageAddition extends StatelessWidget {
  const ImageAddition({super.key, required this.cardStore});
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
                            cardColor: cardStore.cardColor,
                            progressLineValue: 1,
                            progressLineColor: cardStore.progressLineColor,
                          )),
                  UniversalButton(
                    text: 'ADD PHOTO',
                    press: () {},
                  )
                ],
              )),
              UniversalButton(
                  text: 'NEXT',
                  press: () {
                    cardStore.add();
                    context.go(
                      '/',
                    );
                  })
            ],
          ),
        ));
  }
}
