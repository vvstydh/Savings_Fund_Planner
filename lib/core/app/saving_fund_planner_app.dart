import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/goal_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/savings_addition.dart';
import 'package:savings_fund_planner/features/helper/presentation/pages/helper.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/main_page/presentation/pages/main_page_empty.dart';
import 'package:savings_fund_planner/features/settings/presentation/pages/settings.dart';
import 'package:savings_fund_planner/core/app/root_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/cardAdditionSavings',
      routes: [
        GoRoute(
          path: '/cardAdditionGoal',
          builder: (context, state) => const GoalAddition(),
        ),
        GoRoute(
          path: '/cardAdditionSavings',
          builder: (context, state) => const SavingsAddition(),
        ),
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                RootScreen(navigationShell: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/',
                    
                    builder: (context, state) => const MainPageEmpty(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/helper',
                    builder: (context, state) => const Helper(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/settings',
                    builder: (context, state) => const Settings(),
                  ),
                ],
              ),
            ])
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
