import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class Helper extends StatelessWidget {
  const Helper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Text(
            'hhh',
            style: TextStyle(color: Colors.black),
          );
        },
        itemCount: 200,
      ),
    );
  }
}
