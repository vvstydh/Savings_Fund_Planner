import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/pages/main_page_empty.dart';
import 'package:savings_fund_planner/features/planner/presentation/pages/main_page_with_items.dart';

class PlannerPage extends StatelessWidget {
  const PlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cardStore = CardData();
    return Observer(
        builder: (_) => cardStore.inProcess.isEmpty
            ? MainPageEmpty(
                cardStore: cardStore,
              )
            : MainPageWithItems(
                cardStore: cardStore,
              ));
  }
}
