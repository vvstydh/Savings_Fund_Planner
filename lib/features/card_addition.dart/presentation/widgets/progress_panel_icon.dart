import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class ProgressPanelIcon extends StatelessWidget {
  const ProgressPanelIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.iconSize,
      required this.iconBackgroundColor,
      required this.textTheme});
  final String title;
  final IconData icon;
  final double iconSize;
  final Color iconBackgroundColor;
  final TextStyle? textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: textTheme,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: iconBackgroundColor),
          child: Icon(
            icon,
            size: iconSize,
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
