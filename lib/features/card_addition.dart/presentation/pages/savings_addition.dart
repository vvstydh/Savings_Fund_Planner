import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';

class SavingsAddition extends StatelessWidget {
  const SavingsAddition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarForCardAddition(
        appBarText: 'New card',
        height: 40,
        route: '/cardAdditionGoal',
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
                  savingsColor: theme.colorScheme.secondary,
                  themeColor: theme.colorScheme.tertiary,
                  imageColor: theme.colorScheme.tertiary,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Text(
                    '2. I need (in \$)',
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 12, 25, 0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (goalText) {},
                    cursorColor: Colors.black,
                    minLines: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Enter how much you need',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 131, 131, 131),
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Text(
                    '3. I have now (in \$)',
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 12, 25, 0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (goalText) {},
                    cursorColor: Colors.black,
                    minLines: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Enter how much you have',
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
                    context.go('/');
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
