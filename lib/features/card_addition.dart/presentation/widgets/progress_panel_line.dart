import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class ProgressPanelLine extends StatelessWidget {
  const ProgressPanelLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 40,
          height: 23,
          color: Colors.white,
        ),
        Container(
          width: 40,
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: theme.colorScheme.tertiary,
              borderRadius: BorderRadius.circular(45)),
        )
      ],
    );
  }
}
