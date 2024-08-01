import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.press});
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,
        margin: const EdgeInsets.symmetric(vertical: 40),
        child:  ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondary,
              ),
              onPressed: press,
              child: Text(
                'NEXT',
                style: theme.textTheme.bodySmall,
              )),
        );
  }
}
