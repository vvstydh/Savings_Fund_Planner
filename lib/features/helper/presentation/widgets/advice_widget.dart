import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class AdviceWidget extends StatelessWidget {
  const AdviceWidget(
      {super.key,
      required this.title,
      required this.titleText,
      required this.index});
  final String title;
  final String titleText;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        child: ExpansionTile(
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 15),
          collapsedIconColor: theme.colorScheme.secondary,
          iconColor: theme.colorScheme.secondary,
          title:
              Text('${index + 1} $title', style: theme.textTheme.bodyMedium),
          children: [
            Text(
              titleText,
              style: theme.textTheme.labelSmall,
            )
          ],
        ));
  }
}
