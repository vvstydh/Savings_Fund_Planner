import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class RowInprocessCompleted extends StatelessWidget {
  const RowInprocessCompleted({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            TextButton(
              onPressed: () {
                cardStore.switchbutton();
              },
              child: const Text(
                'In process',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Observer(
                builder: (_) => Container(
                      height: 5,
                      width: 100,
                      decoration: BoxDecoration(
                          color: cardStore.inProcessCompletedSwitch
                              ? theme.colorScheme.secondary
                              : theme.colorScheme.onTertiary,
                          borderRadius: BorderRadius.circular(45)),
                    ))
          ],
        ),
        Column(
          children: [
            TextButton(
              onPressed: () {
                cardStore.switchbutton();
              },
              child: const Text(
                'Completed',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Observer(
                builder: (_) => Container(
                      height: 5,
                      width: 100,
                      decoration: BoxDecoration(
                          color: cardStore.inProcessCompletedSwitch
                              ? theme.colorScheme.onTertiary
                              : theme.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(45)),
                    ))
          ],
        )
      ],
    );
  }
}
