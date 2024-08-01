import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/next_button.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class GoalAddition extends StatelessWidget {
  const GoalAddition({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppbarForCardAddition(
        appBarText: 'New card',
        height: 40,
        route: '/',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressPanel(
                  goalColor: theme.colorScheme.secondary,
                  savingsColor: theme.colorScheme.tertiary,
                  themeColor: theme.colorScheme.tertiary,
                  imageColor: theme.colorScheme.tertiary,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Text(
                    '1. I am saving for',
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 12, 25, 0),
                  child: TextField(
                    onChanged: (goalText) {
                      cardStore.goal = goalText;
                    },
                    cursorColor: Colors.black,
                    minLines: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Enter your goal',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 131, 131, 131),
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            )),
            Observer(
                builder: (_) => NextButton(
                      press: cardStore.goal.isEmpty
                          ? null
                          : () => context.go('/cardAdditionSavings',
                              extra: cardStore),
                    ))
          ],
        ),
      ),
    );
  }
}
