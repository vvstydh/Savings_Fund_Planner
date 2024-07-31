import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class ProgressPanelIcon extends StatelessWidget {
  const ProgressPanelIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.iconSize,
      required this.needLine, required this.iconBackgroundColor});
  final String title;
  final IconData icon;
  final double iconSize;
  final bool needLine;
  final Color iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall,
          
        ),
        Row(
          children: [
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
            needLine
                ? Container(
                    width: 40,
                    height: 5,
                    color:theme.colorScheme.tertiary,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                  )
                : const SizedBox()
          ],
        )
      ],
    );
  }
}
