import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key, required this.appBarText, required this.height});
  final String appBarText;
  final double height;

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
      );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);
}
