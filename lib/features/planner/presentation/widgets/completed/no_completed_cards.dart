import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class NoCompletedCards extends StatelessWidget {
  const NoCompletedCards({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            'You dont have any completed cards',
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            'Maybe they\'re in the process',
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
