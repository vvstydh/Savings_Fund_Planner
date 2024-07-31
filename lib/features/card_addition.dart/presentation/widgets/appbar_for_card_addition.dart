import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class AppbarForCardAddition extends StatelessWidget implements PreferredSizeWidget {
  const AppbarForCardAddition({super.key, required this.appBarText, required this.height, required this.route});
  final String appBarText;
  final double height;
  final String route;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: theme.colorScheme.primary,
        surfaceTintColor: theme.colorScheme.primary,
        centerTitle: true,
        title: Text(
          appBarText,
          style: theme.textTheme.labelLarge,
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go(route),
          ),
      );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);
}
