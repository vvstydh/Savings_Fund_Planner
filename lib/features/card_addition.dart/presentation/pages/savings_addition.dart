import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/universal_button.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/appbar_for_card_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel.dart';

class SavingsAddition extends StatelessWidget {
  const SavingsAddition({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarForCardAddition(
        appBarText: 'New card',
        height: 40,
        route: '/cardAdditionGoal',
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
                  savingsColor: theme.colorScheme.secondary,
                  themeColor: theme.colorScheme.tertiary,
                  imageColor: theme.colorScheme.tertiary,
                  textGoalTheme: theme.textTheme.titleMedium,
                  textSavingsTheme: theme.textTheme.titleMedium,
                  textThemeTheme: theme.textTheme.titleSmall,
                  textImageTheme: theme.textTheme.titleSmall,
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
                    onChanged: (need) {
                      cardStore.personNeed = double.parse(need);
                    },
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
                    onChanged: (has) {
                      cardStore.personHas = double.parse(has);
                    },
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
            Observer(
                builder: (_) => UniversalButton(
                    text: 'NEXT',
                    press: cardStore.personNeed == 0 ||
                            cardStore.personNeed - cardStore.personHas <= 0
                        ? null
                        : () {
                            context.go('/cardAdditionTheme', extra: cardStore);
                          }))
          ],
        ),
      ),
    );
  }
}
