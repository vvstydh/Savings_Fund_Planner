import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/saving_fund_planner_app.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CardDataBase.initialize();
  runApp(const MainApp());
}
