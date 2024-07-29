import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navigationShell,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 30),
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomNavigationBar(
            elevation: 30,
            borderRadius: const Radius.circular(45),
            selectedColor: theme.colorScheme.secondary,
            backgroundColor: theme.colorScheme.primary,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.book_rounded),
                title: Text(
                  'Planner',
                  style: theme.textTheme.labelSmall,
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.question_mark_rounded),
                title: Text(
                  'Helper',
                  style: theme.textTheme.labelSmall,
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ],
            currentIndex: navigationShell.currentIndex,
            onTap: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        ));
  }
}
