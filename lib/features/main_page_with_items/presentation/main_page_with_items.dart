import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class MainPageWithItems extends StatelessWidget {
  const MainPageWithItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
        appBar: AppBar(
          backgroundColor: theme.colorScheme.primary,
          centerTitle: true,
          title: Text(
            'Planner',
            style: theme.textTheme.labelLarge,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('In process'), Text('Competed')],
            ),
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
            ElevatedButton(
                onPressed: () => context.go('/'),
                child: Text(
                  'CREATE YOUR FIRST GOAL',
                  style: theme.textTheme.labelSmall,
                ))
          ],
        ),);
  }
}
