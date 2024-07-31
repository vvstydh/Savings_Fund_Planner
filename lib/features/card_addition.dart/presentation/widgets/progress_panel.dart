import 'package:flutter/material.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel_icon.dart';

class ProgressPanel extends StatelessWidget {
  const ProgressPanel(
      {super.key,
      required this.goalColor,
      required this.savingsColor,
      required this.themeColor,
      required this.imageColor});
  final Color goalColor;
  final Color savingsColor;
  final Color themeColor;
  final Color imageColor;

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProgressPanelIcon(
          title: 'Goal',
          icon: Icons.stars_rounded,
          iconSize: 30,
          needLine: true,
          iconBackgroundColor: goalColor,
        ),
        ProgressPanelIcon(
          title: 'Savings',
          icon: Icons.attach_money_rounded,
          iconSize: 30,
          needLine: true,
          iconBackgroundColor: savingsColor,
        ),
        ProgressPanelIcon(
          title: 'Theme',
          icon: Icons.palette_rounded,
          iconSize: 25,
          needLine: true,
          iconBackgroundColor: themeColor,
        ),
        ProgressPanelIcon(
          title: 'Image',
          icon: Icons.image_rounded,
          iconSize: 25,
          needLine: false,
          iconBackgroundColor: imageColor,
        ),
      ],
    );
  }
}
