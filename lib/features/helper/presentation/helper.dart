import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class Helper extends StatelessWidget {
  const Helper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Helper',
          style: theme.textTheme.labelLarge,
        ),
      ),
      backgroundColor: theme.colorScheme.primary,
    );
  }
}
