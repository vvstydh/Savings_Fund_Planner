import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/pages/onboarding.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/goal_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/image_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/savings_addition.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/pages/theme_addition.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/helper/presentation/pages/helper.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/presentation/pages/card_edit.dart';
import 'package:savings_fund_planner/features/planner/presentation/pages/planner_page.dart';
import 'package:savings_fund_planner/features/settings/presentation/pages/settings.dart';
import 'package:savings_fund_planner/core/app/root_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.onboardingCompleted});

  final bool onboardingCompleted;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> rootNavigatorKey =
        GlobalKey<NavigatorState>();
    final cardStore = CardData();
    final cardDataBase = CardDataBase(cardStore: cardStore);

    cardDataBase.fetchCards();

    final router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: onboardingCompleted ? '/' : '/onboarding',
      routes: [
        GoRoute(
          path: '/onboarding',
          builder: (context, state) =>
              Onboarding(onboardingCompleted: () async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('onboarding_completed', true);
            
          }),
        ),
        GoRoute(
          path: '/cardAdditionGoal',
          builder: (context, state) =>
              GoalAddition(cardStore: state.extra as CardData),
        ),
        GoRoute(
          path: '/cardAdditionSavings',
          builder: (context, state) => SavingsAddition(
            cardStore: state.extra as CardData,
          ),
        ),
        GoRoute(
          path: '/cardAdditionTheme',
          builder: (context, state) => ThemeAddition(
            cardStore: state.extra as CardData,
          ),
        ),
        GoRoute(
          path: '/cardAdditionImage',
          builder: (context, state) => ImageAddition(
            cardStore: cardStore,
            cardDataBase: cardDataBase,
          ),
        ),
        GoRoute(
          path: '/cardEdit',
          builder: (context, state) => CardEdit(
            cardStore: cardStore,
            index: state.extra as int,
            cardDataBase: cardDataBase,
          ),
        ),
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                RootScreen(navigationShell: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/',
                    builder: (context, state) => PlannerPage(
                      cardStore: cardStore,
                      rootNavigatorKey: rootNavigatorKey,
                      cardDataBase: cardDataBase,
                    ),
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
