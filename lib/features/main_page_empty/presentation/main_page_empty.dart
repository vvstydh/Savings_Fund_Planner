import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/widgets/navigationbar.dart';
import 'package:go_router/go_router.dart';

class MainPageEmpty extends StatelessWidget {
  const MainPageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
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
                  backgroundColor: const Color.fromARGB(255, 50, 82, 249),
                ),
                onPressed: () => context.go('/withItems'),
                child: Text(
                  'CREATE YOUR FIRST GOAL',
                  style: theme.textTheme.bodySmall,
                )),
          ],
        ),
        bottomNavigationBar: const MyNavigationBar(
            indicatorColor: Color.fromARGB(255, 50, 82, 249),
            destinations: [],
            backgroundColor: Colors.white));
  }
}
