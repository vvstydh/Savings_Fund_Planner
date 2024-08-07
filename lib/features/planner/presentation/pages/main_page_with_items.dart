import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/appbar.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/completed_card_list.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/inprocess_card_list.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/row_inprocess_completed.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/no_completed_cards.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/no_inprocess_cards.dart';

class MainPageWithItems extends StatelessWidget {
  const MainPageWithItems({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: theme.colorScheme.primary,
        appBar: const Appbar(
          appBarText: 'Planner',
          height: 40,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RowInprocessCompleted(
              cardStore: cardStore,
            ),
            Observer(
                builder: (_) => cardStore.inProcessCompletedSwitch
                    ? Observer(
                        builder: (_) => cardStore.inProcess.isNotEmpty
                            ? InprocessCardList(cardStore: cardStore)
                            : NoInprocessCards(cardStore: cardStore))
                    : cardStore.completed.isEmpty
                        ? NoCompletedCards(
                            cardStore: cardStore,
                          )
                        : CompletedCardList(cardStore: cardStore))
          ],
        ));
  }
}
