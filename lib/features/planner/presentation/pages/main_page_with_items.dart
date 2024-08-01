import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/appbar.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';

class MainPageWithItems extends StatelessWidget {
  const MainPageWithItems({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: const Appbar(
          appBarText: 'Planner',
          height: 40,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('In process'), Text('Competed')],
            ),
            SizedBox(
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 148,
                    child: Image.asset(
                      'assets/images/list_is_empty.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    'You dont have any in process cards',
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    'Click the button below to create one',
                    style: theme.textTheme.labelSmall,
                  ),
                  SizedBox(
                      height: 50,
                      width: 280,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.secondary,
                          ),
                          onPressed: () {
                            context.go('/cardAdditionGoal', extra: cardStore);
                          },
                          child: Text(
                            'ADD NEW CARD',
                            style: theme.textTheme.bodySmall,
                          )))
                ],
              ),
            )
          ],
        ));
  }
}
