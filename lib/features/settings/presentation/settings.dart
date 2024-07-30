import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/settings/presentation/settings_widget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Privacy Policy',
      'Terms of Use',
      'Support',
      'Share'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Settings',
          style: theme.textTheme.labelLarge,
        ),
      ),
      backgroundColor: theme.colorScheme.primary,
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
        return SettingsWidget(title: titles[index]);
      }),
    );
  }
}
