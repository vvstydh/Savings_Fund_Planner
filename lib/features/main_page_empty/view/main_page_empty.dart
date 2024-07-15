import 'package:flutter/material.dart';
import 'package:savings_fund_planner/features/main_page_with_items/view/main_page_with_items.dart';

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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MainPageWithItems()));
              },
              child: Text(
                'CREATE YOUR FIRST GOAL',
                style: theme.textTheme.labelSmall,
              ))
        ],
      ),
    );
  }
}
