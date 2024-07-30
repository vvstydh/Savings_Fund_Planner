import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 55,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            softWrap: true,
            title,
            style: theme.textTheme.labelMedium,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 35,
              ),
              color: theme.colorScheme.secondary,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
