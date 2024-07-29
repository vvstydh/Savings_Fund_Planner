import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class MainPageEmpty extends StatelessWidget {
  const MainPageEmpty({super.key});

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
            'You dont have any cards yet',
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            'Click the button below to create a new one',
            style: theme.textTheme.labelSmall,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:theme.colorScheme.secondary,
              ),
              onPressed: () => context.go('/withItems'),
              child: Text(
                'CREATE YOUR FIRST GOAL',
                style: theme.textTheme.bodySmall,
              )),
        ],
      ),
    );
  }
}
