import 'package:flutter/material.dart';
import 'package:savings_fund_planner/features/main_page_empty/view/main_page_empty.dart';
import 'package:savings_fund_planner/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        theme: theme, debugShowCheckedModeBanner: false, home: const MainPageEmpty());
  }
}
