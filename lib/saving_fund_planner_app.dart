import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/features/main_page_empty/presentation/main_page_empty.dart';
import 'package:savings_fund_planner/features/main_page_with_items/presentation/main_page_with_items.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const MainPageEmpty(),
        ),
        GoRoute(
          path: '/withItems',
          builder: (context, state) => const MainPageWithItems(),
        )
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
