import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class GoalAddition extends StatelessWidget {
  const GoalAddition({super.key});

  @override
  Widget build(BuildContext context) {
    final cardStore = CardData();
    return Scaffold(
      appBar: const AppbarForCardAddition(
        appBarText: 'New card',
        height: 40,
        route: '/',
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
            Container(
              height: 50,
              width: 300,
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.secondary,
                  ),
                  onPressed: () {
                    context.go('/cardAdditionSavings');
                  },
                  child: Text(
                    'NEXT',
                    style: theme.textTheme.bodySmall,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
