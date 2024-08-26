import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/saving_fund_planner_app.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CardDataBase.initialize();
  final prefs = await SharedPreferences.getInstance();
  final bool onboardingCompleted =
      prefs.getBool('onboarding_completed') ?? false;
  runApp(MainApp(
    onboardingCompleted: onboardingCompleted,
  ));
}
