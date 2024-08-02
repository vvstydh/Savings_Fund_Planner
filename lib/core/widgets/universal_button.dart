import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class UniversalButton extends StatelessWidget {
  const UniversalButton({super.key, this.press, required this.text});
  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      margin: const EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.secondary,
          ),
          onPressed: press,
          child: Text(
            text,
            style: theme.textTheme.bodySmall,
          )),
    );
  }
}
