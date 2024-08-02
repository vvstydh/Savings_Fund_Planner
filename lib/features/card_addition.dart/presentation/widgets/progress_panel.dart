import 'package:flutter/material.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel_icon.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/progress_panel_line.dart';

class ProgressPanel extends StatelessWidget {
  const ProgressPanel(
      {super.key,
      required this.goalColor,
      required this.savingsColor,
      required this.themeColor,
      required this.imageColor,
      this.textGoalTheme,
      this.textSavingsTheme,
      this.textThemeTheme,
      this.textImageTheme});
  final Color goalColor;
  final Color savingsColor;
  final Color themeColor;
  final Color imageColor;
  final TextStyle? textGoalTheme;
  final TextStyle? textSavingsTheme;
  final TextStyle? textThemeTheme;
  final TextStyle? textImageTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProgressPanelIcon(
          title: 'Goal',
          icon: Icons.stars_rounded,
          iconSize: 30,
          iconBackgroundColor: goalColor,
          textTheme: textGoalTheme,
        ),
        const ProgressPanelLine(),
        ProgressPanelIcon(
          title: 'Savings',
          icon: Icons.attach_money_rounded,
          iconSize: 30,
          iconBackgroundColor: savingsColor,
          textTheme: textSavingsTheme,
        ),
        const ProgressPanelLine(),
        ProgressPanelIcon(
          title: 'Theme',
          icon: Icons.palette_rounded,
          iconSize: 25,
          iconBackgroundColor: themeColor,
          textTheme: textThemeTheme,
        ),
        const ProgressPanelLine(),
        ProgressPanelIcon(
          title: 'Image',
          icon: Icons.image_rounded,
          iconSize: 25,
          iconBackgroundColor: imageColor,
          textTheme: textImageTheme,
        ),
      ],
    );
  }
}
